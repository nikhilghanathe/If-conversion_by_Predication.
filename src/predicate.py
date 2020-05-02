import os
import argparse
from Util import *
from CFG import *
import json
import Config
import IR
import IRUtil
import Writer

class Predicate():
	def __init__(self, fileName):
		self.fileName = fileName
		self.cfgfname = 'cfg.json'
		self.cfg = {}
		self.branches = {}
		self.out = Writer.Writer(os.path.join('output', fileName[:-2]+'_tranformed.ll')) # output file
		self.branchLabel = 0 # 
		self.branch_blocks = {}

	def parseJson(self):
		fp = open(self.cfgfname, 'r')
		cfgData = json.load(fp)
		cfg = getBBs(cfgData)
		self.cfg = copy.deepcopy(cfg)
		if Config.DEBUG:
			writeCFG(self.cfg)
		


	def getRootNode(self):
		for id, node in self.cfg.items():
			if not node.getProducers():
				return node
		return




	def collectBranches(self):
		rootNode = self.getRootNode()
		self.identifyCondBlocks(rootNode)

	def createIR(self):
		cfg_new = {}
		for id, node in self.cfg.items():
			cmd_l = []
			for cmd in node.cmdList:
				cmd_l += [IRUtil.parseCmd(cmd)]
			for c in cmd_l:
				print(c)
			# node.setCmdIR_l(cmd_l)
			node_new = CFGNode(node.name, node.id, node.cmdList)
			node_new.cmdIR_l, node_new.edges, node_new.producers, node_new.consumers, node_new.isHead, node_new.isTBlock, node_new.isFBlock, node_new.isTail = cmd_l, node.edges, node.producers, node.consumers, node.isHead, node.isTBlock, node.isFBlock, node.isTail
			cfg_new.update({id:node_new})
		self.cfg.update(cfg_new)
		writeCFG(self.cfg)

		self.printProg_debug()	

	def printProg_debug(self):
		for id, node in self.cfg.items():
			self.Print(IR.Prog(node.cmdIR_l))
		self.out.close()
	

	#idenitfiy if this is the head od the 
	def indentifyHead(self, node):
		cmd_l = []
		for cmd in node.cmdIR_l:
			print('!!!!!!!!!!!!!!!!!!!!!!!!!!11', cmd, isinstance(cmd, IR.Branch))
			if isinstance(cmd, IR.Branch):
				condn_var, label_true, label_false = cmd.condn_var, cmd.label_true, cmd.label_false
				if condn_var.idf !='': #if it is a confitional branch block
					print('!!!!!!!!!!!!!!!!!!!!!!!!!!11', cmd, isinstance(cmd, IR.Branch), condn_var.idf)
					b_node= BranchBlock(self.branchLabel, node.id)
					self.branch_blocks.update({self.branchLabel: b_node})
					return self.branchLabel, b_node, cmd
		return 0, None, IR.Statement('')



	def identifyCondBlocks(self, node):
		id, b_node, cmd = self.indentifyHead(node)
		if b_node != None:
			if self.isValidCondBlock(node):
				condn_var, label_true, label_false = cmd.condn_var, cmd.label_true, cmd.label_false
				headNode = self.cfg[id]
				TB, FB, tail, nextRootNode = self.getTFT(cmd, headNode)
				b_node.TB, b_node.FB, b_node.tail = TB, FB, tail
				self.branch_blocks.update({id:b_node})
				self.branchLabel +=1 # increment label
				self.identifyCondBlocks(self.cfg[nextRootNode])


		#recursively go through the consumers
		for cons in node.getConsumers():
			self.identifyCondBlocks(self.cfg[cons])

		writeBranchBlocks(self.branch_blocks)


	def getTFT(self, cmd, node):
		print(cmd.label_true, cmd.label_false)
		condn_var, label_true, label_false = cmd.condn_var, cmd.label_true.name[1:], cmd.label_false.name[1:]
		consumers = node.getConsumers()
		id_TB, id_FB, id_tail = -1, -1, -1
		print(label_true, label_false)
		for con in consumers:
			if self.cfg[con].name==label_true:
				id_TB = con
			if self.cfg[con].name==label_false:
				id_FB = con
		if id_TB==-1 and id_FB==-1:
			raise('Error in Extarcting Branch Block\n')

		if id_FB in self.cfg[con].getConsumers():# triangle block
			id_tail= id_FB
			return id_TB, id_FB, id_tail, id_tail

		#diamond block
		con_t, con_f = self.cfg[id_TB].getConsumers(), self.cfg[id_FB].getConsumers()
		
		if len(con_t) ==1 and len(con_f)==1:
			id_tail = con_t[0]
		else:
			raise('Error in Extarcting Branch Block\n')			
		return id_TB, id_FB, id_tail, id_tail

	def isValidCondBlock(self, node):
		consumers  = node.getConsumers()
		print(consumers)
		if len(consumers)==2:
			for cons in consumers:
				prod = self.cfg[cons].getProducers()
				print(len(prod), prod , '44444444444444444')
				if len(prod)!=1: return False
			return True
		return False




	'''Resolve methods for each type of IR we defined'''

	# def resolveCmd(self, ir):
	# 	if isinstance(ir, IR.Assn):
	# 		return self.resovleAssn





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
		self.Print(ir.condn_var)
		self.out.printf(', ')
		self.out.Print(ir.var_t)
		self.out.printf(',')
		self.out.Print(ir.var_f)
		self.out.printf('\n')

	def PrintStatement(self, ir):
		self.out.printf(ir.cmd + '\n')

	def PrintVar(self, ir):
		if not ir.isLHS: self.Print(ir.type)
		self.out.printf(' ')
		self.out.printf(ir.idf)

	def PrintAssn(self, ir):
		self.Print(ir.var_l)
		self.out.Print(' = ')
		self.Print(ir.var_r)
		self.out.printf('\n')

	def PrintLabel(self, ir):
		self.out.printf('label ')
		self.out.printf(ir.name)

	def PrintAlign(self, ir):
		self.out.printf('align ')
		self.out.printf(ir.val)

	def PrintInt(self, ir):
		self.out.printf(ir.num)

	def PrintCmd(self, ir):
		self.out.printf(ir.cmd + '\n')

	def PrintType(self, ir):
		self.out.printf(ir.type)




	def run(self):
		
		os.chdir(os.path.join('tmp'))


		#read json file and get the basic blocks
		self.parseJson()

		self.createIR()

		#identify all if-else candiate blocks
		self.collectBranches()


		os.chdir(os.path.join('..'))

















#driver function
def runPredicatePass():
	parser = argparse.ArgumentParser()
	parser.add_argument("-fname", type=str, default = "example.c", metavar = '', help = "provide the name of the input file [only *.c files]\n")
	parser.add_argument("-attempts", type=str, default = 1, metavar = '', help = "Enter the number of attempts at routing to be made \n")
	parser.add_argument("-verbose", type=str, choices = ['true', 'false'], default = "false", metavar = '', help = "Pauses the progress and waits for a key press to proceed \n")
	parser.add_argument("-draw", type=str, choices = ['true', 'false'], default = "false", metavar = '', help = "Flag to indicate whether the program should draw through its progress \n")
	# parser.add_argument("-runSim", type=int, default = -1, metavar = '', help = "number of data-points to run.  IF NOT SPECIFIED, ALL DATA-POINTS in the testing dataset are run  \n")
	
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

