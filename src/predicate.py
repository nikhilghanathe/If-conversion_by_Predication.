import os
import argparse
from Util import *
from CFG import *
import json
import Config
import IR
import IRUtil
import Writer

#Base class for IF-conversion
class Predicate():
	def __init__(self, fileName):
		self.fileName = fileName
		self.cfgfname = 'cfg.json'
		self.cfg = {}
		self.branches = {}
		self.out = Writer.Writer(os.path.join('output', fileName[:-2]+'_tranformed.ll')) # output file
		self.branchLabel = 0 # 
		self.branch_blocks = {}
		self.isVisited = {}
		self.TB_st = {}
		self.FB_st = {}
		self.debug = False

	def parseJson(self):
		fp = open(self.cfgfname, 'r')
		cfgData = json.load(fp)
		cfg = getBBs(cfgData)
		self.cfg = copy.deepcopy(cfg)
		if Config.DEBUG:
			writeCFG(self.cfg)
		

	#identify root node to start analysis
	def getRootNode(self):
		for id, node in self.cfg.items():
			if not node.getProducers():
				return node
		return


	#identify all candidate Conditional Blocks
	def collectBranches(self):
		rootNode = self.getRootNode()
		for id, node in self.cfg.items():
			self.isVisited.update({id:False})
		self.identifyCondBlocks(rootNode)
		

	#convert LLVM-IR to ICE-IR
	def createIR(self):
		cfg_new = {}
		for id, node in self.cfg.items():
			cmd_l = []
			for cmd in node.cmdList:
				cmd_l += [IRUtil.parseCmd(cmd)]
			node_new = CFGNode(node.name, node.id, node.cmdList)
			node_new.cmdIR_l, node_new.edges, node_new.producers, node_new.consumers, node_new.isHead, node_new.isTBlock, node_new.isFBlock, node_new.isTail = cmd_l, node.edges, node.producers, node.consumers, node.isHead, node.isTBlock, node.isFBlock, node.isTail
			cfg_new.update({id:node_new})
		self.cfg.update(cfg_new)
		writeCFG(self.cfg)



	#idenitfiy if this is the head od the 
	def identifyHead(self, node):
		cmd_l = []
		for cmd in node.cmdIR_l:
			if isinstance(cmd, IR.Branch):
				condn_var, label_true, label_false = cmd.condn_var, cmd.label_true, cmd.label_false
				if condn_var.idf !='': #if it is a confitional branch block
					if self.isValidCondBlock(node):		
						b_node= BranchBlock(self.branchLabel, node.id)
						self.branch_blocks.update({self.branchLabel: b_node})
						return self.branchLabel, b_node, cmd
		return 0, None, IR.Statement('')



	def identifyCondBlocks(self, node):
		id, b_node, cmd = self.identifyHead(node)
		if b_node != None:
			if self.isValidCondBlock(node):
				condn_var, label_true, label_false = cmd.condn_var, cmd.label_true, cmd.label_false
				headNode = self.cfg[id]
				TB, FB, tail, nextRootNode = self.getTFT(cmd, node.id)
				self.isVisited[id], self.isVisited[TB], self.isVisited[FB] = True, True, True
				b_node.TB, b_node.FB, b_node.tail = TB, FB, tail
				b_node.condn_var = condn_var
				self.branch_blocks.update({id:b_node})
				self.branchLabel +=1 # increment label
					
		self.isVisited[node.id] = True 
		#recursively go through the consumers
		for cons in node.getConsumers():
			if not self.isVisited[cons]:
				self.identifyCondBlocks(self.cfg[cons])

		writeBranchBlocks(self.branch_blocks)


	#returns TB, TB and tail of Conditional blocks
	def getTFT(self, cmd, id):
		node = self.cfg[id]
		condn_var, label_true, label_false = cmd.condn_var, cmd.label_true.name[1:], cmd.label_false.name[1:]
		consumers = node.getConsumers()
		id_TB, id_FB, id_tail = -1, -1, -1
		for con in consumers:
			if self.cfg[con].name.encode('utf-8')==label_true:
				id_TB = con
			if self.cfg[con].name.encode('utf-8')==label_false:
				id_FB = con
		if id_TB==-1 and id_FB==-1:
			raise('Error in Extracting Branch Block\n') # should not reach here

		if id_FB in self.cfg[id_TB].getConsumers():# triangle block
			id_tail= id_FB
			return id_TB, id_FB, id_tail, id_tail

		#diamond block
		con_t, con_f = self.cfg[id_TB].getConsumers(), self.cfg[id_FB].getConsumers()
			
		# tail and FB are same for traingle-formation
		if len(con_t) ==1 and len(con_f)==1:
			id_tail = con_t[0]
		else:
			raise('Error in Extracting Branch Block\n')			
		return id_TB, id_FB, id_tail, id_tail

	#check if this is a valid candidate
	def isValidCondBlock(self, node):
		consumers  = node.getConsumers()
		
		if len(consumers)==2:
			con1, con2 = consumers[0], consumers[1]
			prod1, prod2 = self.cfg[con1].getProducers(), self.cfg[con2].getProducers()
			if not (len(prod1)==1 and len(prod2)==1): # should have not other producers other than Head node
				#handle traingle-formation
				if len(prod1) > len(prod2):
					if not ( (prod1 == [con2, node.id]) or (prod1 == [node.id, con2]) ):
						return True
				else:
					if ( (prod2 == [con1, node.id]) or (prod2 == [node.id, con1]) ):
						return True
				if not (len(prod1)==1 and len(prod2)==1):
					return False
			#handle diamond-formation
			if not (prod1 == prod2):
				return False
			con1_con, con2_con = self.cfg[con1].getConsumers(), self.cfg[con2].getConsumers()
			if not (len(con1_con)==1 and len(con2_con)==1):
				return False
			if not (con1_con == con2_con):
				return False
			return True # if all tests are passed then its a valid candidate

		return False




	'''Tranform functions'''

	def transformHead(self, id):
		node = self.cfg[id]
		cmds = node.getCmdIR_l()
		cmds_new = []
		for cm in cmds:
			if not isinstance(cm, IR.Branch):
				cmds_new += [cm]
		node.setCmdIR_l(cmds_new)
		self.cfg.update({id:node})

	def transformTB(self, id):
		writeCFG(self.cfg)
		node = self.cfg[id]
		cmds = node.getCmdIR_l()
		cmds_new = []
		for cm in cmds:
			if isinstance(cm, IR.Store):
				src, dest, align = cm.src, cm.dest, cm.align
				#cm_new = IR.Store(IR.Var(src.idf, (src.type)), IR.Var(dest.idf+'_t', (dest.type)), cm.align)
				suffix = str(Config.count) 
				#replace store with temp assignment
				cm_new = IR.Assn(IR.Var(dest.idf+'_t'+suffix, (dest.type), isLHS=True) , IR.Add( IR.Var(src.idf, (src.type)), IR.Int(0) ))
				cmds_new += [cm_new]
				self.TB_st.update({dest:cm.align.val})
			elif isinstance(cm, IR.Branch):
				cmds_new += []
			else:
				cmds_new += [cm]
		node.setCmdIR_l(cmds_new)
		self.cfg.update({id:node})

	def transformFB(self, id):
		node = self.cfg[id]
		cmds = node.getCmdIR_l()
		cmds_new = []
		for cm in cmds:
			if isinstance(cm, IR.Store):
				src, dest, align = cm.src, cm.dest, cm.align
				#cm_new = IR.Store(IR.Var(src.idf, (src.type)), IR.Var(dest.idf+'_f', (dest.type)), cm.align)
				suffix = str(Config.count)
				#replace store with temp assignment
				cm_new = IR.Assn(IR.Var(dest.idf+'_f'+suffix, (dest.type), isLHS=True) , IR.Add( IR.Var(src.idf, (src.type)), IR.Int(0) ))
				cmds_new += [cm_new]
				self.FB_st.update({dest:cm.align.val})
			elif isinstance(cm, IR.Branch):
				cmds_new += []
			else:
				cmds_new += [cm]
		node.setCmdIR_l(cmds_new)
		self.cfg.update({id:node})


	def getResolvedType(self, var_type):
		type = var_type.type
		if type[-1]=='*':#if a pointer
			return IR.Type(type[:-1]) #our temp variables are non pointers always
		else:
			return IR.Type(type)
	def transformTail(self, id, condn_var):
		node = self.cfg[id]
		cmds = node.getCmdIR_l()
		cmds_new = []
		#Insert 'select' instructions for all 'stores' replaced
		for var in self.TB_st.keys():
			if var.idf in list(x.idf for x in self.FB_st) :
				var.isLHS = True
				resolvedType = self.getResolvedType(var.type)
				suffix = str(Config.count)
				cmds_new += [IR.Assn(IR.Var(var.idf+'_merge'+suffix, resolvedType, isLHS=True), IR.Select(IR.Var(condn_var.idf, (condn_var.type)), IR.Var(var.idf+"_t"+suffix, (resolvedType)), IR.Var(var.idf+"_f"+suffix, (resolvedType)) ) )]
				cmds_new += [IR.Store(IR.Var(var.idf+'_merge'+suffix, resolvedType), IR.Var(var.idf, var.type), IR.Align(self.TB_st[var]))]
			else:
				var.isLHS = True
				suffix = str(Config.count)
				resolvedType = self.getResolvedType(var.type)
				cmds_new += [IR.Assn(IR.Var(var.idf+'_merge', resolvedType, isLHS=True), IR.Select(condn_var, IR.Var(var.idf+"_t"+suffix, (resolvedType)), IR.Var('0', (resolvedType) )))]
				cmds_new += [IR.Store(IR.Var(var.idf+'_merge', resolvedType), IR.Var(var.idf, var.type), IR.Align(self.TB_st[var]))]

		node.setCmdIR_l(cmds_new+node.getCmdIR_l())
		self.cfg.update({id:node})
		self.TB_st, self.FB_st = {}, {}
		


	#remove TB and FB and merge into Head node
	# add uncontional branch to tail node
	def mergeHead(self, head, TB, FB, tail):
		headNode = self.cfg[head]
		cmds_head = headNode.getCmdIR_l()

		TBNode = self.cfg[TB]
		cmds_TB = TBNode.getCmdIR_l()

		tailNode = self.cfg[tail]
		if tail in headNode.getConsumers():
			cmds_FB = []
		else:
			FBNode = self.cfg[FB]
			cmds_FB = FBNode.getCmdIR_l()

		cmds_merged = cmds_head + cmds_TB + cmds_FB
		cmd = IR.Branch(IR.Var('', ''), IR.Label('%'+tailNode.name), IR.Label(''))
		cmd.isCond=False
		cmds_merged += [cmd]
		headNode.setCmdIR_l(cmds_merged)
		self.cfg.update({head : headNode})
		self.isVisited[TB] = True
		
		self.cfg.pop(TB)
		if not tail in headNode.getConsumers():
			self.isVisited[FB] = True
			self.cfg.pop(FB)


		headNode = self.cfg[head]
		cmds_head = headNode.getCmdIR_l()


	def transformBranchBlocks(self):
		Config.count= 0 # monotonic counter for making sure the code is SSA conformed
		for id, node in self.branch_blocks.items():
			self.transformHead(node.head)
			self.transformTB(node.TB)
			if node.FB!= node.tail:
				self.transformFB(node.FB)
				self.transformTail(node.tail, node.condn_var)
			else:
				self.transformTail(node.tail, node.condn_var)

			self.mergeHead(node.head, node.TB, node.FB, node.tail)
			Config.count +=1 # montonic counter to avoid name clashes





	#driver function
	def run(self):
		
		os.chdir(os.path.join('tmp'))


		#read json file and get the basic blocks
		self.parseJson()

		#Convert LLVM-IR to ICE-IR
		self.createIR()

		print(' The number of basic blocks BEFORE opt ', len(list(self.cfg.keys())))

		#identify all if-else candiate blocks
		self.collectBranches()

		self.transformBranchBlocks()

		self.printProg_debug()

		self.out.close()

		os.chdir(os.path.join('..'))

		print(' The number of basic blocks AFTER opt ', len(list(self.cfg.keys())))








	'''codegen '''
	def Print(self, ir):
		if isinstance(ir, IR.Prog):
			self.PrintProg(ir)
		elif isinstance(ir, IR.Store):
			self.PrintStore(ir)
		elif isinstance(ir, IR.Select):
			self.PrintSelect(ir)
		elif isinstance(ir, IR.Branch):
			self.PrintBranch(ir)
		elif isinstance(ir, IR.Statement):
			self.PrintStatement(ir)
		elif isinstance(ir, IR.Var):
			self.PrintVar(ir)
		elif isinstance(ir, IR.Assn):
			self.PrintAssn(ir)
		elif isinstance(ir, IR.Label):
			self.PrintLabel(ir)
		elif isinstance(ir, IR.Int):
			self.PrintInt(ir)
		elif isinstance(ir, IR.Cmd):
			self.PrintCmd(ir)
		elif isinstance(ir, IR.Align):
			self.PrintAlign(ir)
		elif isinstance(ir, IR.Type):
			self.PrintType(ir)
		elif isinstance(ir, IR.Add):
			self.PrintAdd(ir)
		else:
			raise('codegen for this not supported')



	def writePrefix(self):
		fname = os.path.join(self.fileName[:-2]+'_named.ll')
			
		cmdList = []
		fp = open(fname, 'r')
		lines = fp.readlines()
		for line in lines:
			cmd= line.strip()
			if cmd=='bb:':
				fp.close()
				break
			else:
				cmdList.append(line)
		for cmd in cmdList:
			self.out.printf(cmd)


	def writeSuffix(self):
		fname = os.path.join(self.fileName[:-2]+'_named.ll')
		cmdList = []
		startRecord = False
		fp = open(fname, 'r')
		lines = fp.readlines()
		for line in lines:
			cmd= line.strip()
			if cmd=='}':
				startRecord = True
			if startRecord == True:
				cmdList.append(line)
		for cmd in cmdList:
			self.out.printf(cmd)


	def printProg_debug(self):
		self.writePrefix()
		for id, node in self.cfg.items():
			self.out.printf(node.name+':\n\t')
			self.Print(IR.Prog(node.cmdIR_l))
		self.writeSuffix()
		

	def PrintProg(self, ir):
		for cmd in ir.cmd_l:
			self.Print(cmd)


	def PrintStore(self, ir):
		self.out.printf('store ')
		self.Print(ir.src)
		self.out.printf(', ')
		self.Print(ir.dest)
		self.out.printf(', ')
		self.Print(ir.align)
		self.out.printf('\n')

	def PrintBranch(self, ir):
		self.out.printf('br ')
		if ir.isCond:
			self.Print(ir.condn_var)
			self.out.printf(', ')
			self.Print(ir.label_true)
			self.out.printf(', ')
			self.Print(ir.label_false)
		else:
			self.Print(ir.label_true)
		self.out.printf('\n')

	def PrintSelect(self, ir):
		self.out.printf('select ')
		self.debug = True
		self.Print(ir.condn_var)
		self.out.printf(', ')
		self.Print(ir.var_t)
		self.out.printf(',')
		self.Print(ir.var_f)
		self.out.printf('\n')

	def PrintStatement(self, ir):
		self.out.printf(ir.cmd + '\n')

	def PrintVar(self, ir):
		if not ir.isLHS: 
			self.Print(ir.type)
		self.out.printf(' ')
		self.out.printf(ir.idf)

	def PrintAssn(self, ir):
		self.Print(ir.var_l)
		self.out.printf(' = ')
		self.Print(ir.var_r)
		#self.out.printf('\n')

	def PrintLabel(self, ir):
		self.out.printf('label ')
		self.out.printf(ir.name)

	def PrintAlign(self, ir):
		self.out.printf('align ')
		self.out.printf(ir.val)
		

	def PrintInt(self, ir):
		self.out.printf(str(ir.num))

	def PrintCmd(self, ir):
		self.out.printf(ir.cmd + '\n')

	def PrintType(self, ir):
		self.out.printf(ir.type)

	def PrintAdd(self,ir):
		self.out.printf(' add nsw ')
		self.Print(ir.var1)
		self.out.printf(', ')
		self.Print(ir.var2)
		self.out.printf('\n')














#driver function
def runPredicatePass():
	parser = argparse.ArgumentParser()
	parser.add_argument("-fname", type=str, default = "example.c", metavar = '', help = "provide the name of the input file [only *.c files]\n")
	parser.add_argument("-attempts", type=str, default = 1, metavar = '', help = "Enter the number of attempts at routing to be made \n")
	parser.add_argument("-verbose", type=str, choices = ['true', 'false'], default = "false", metavar = '', help = "Pauses the progress and waits for a key press to proceed \n")
	parser.add_argument("-draw", type=str, choices = ['true', 'false'], default = "false", metavar = '', help = "Flag to indicate whether the program should draw through its progress \n")
	
	args = parser.parse_args()

	fname = args.fname

	#get llvm ir form
	convertToLL(fname)

	#run the instnamer pass to assign names to undefined instructions
	#helps in avoiding instruction number error
	runInstNamerPass(fname)

	#extract the CFG
	getCFG(fname) 

	obj = Predicate(fname)
	obj.run()






if __name__ == '__main__':
	runPredicatePass()

