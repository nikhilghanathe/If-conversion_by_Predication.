import IR

'''IR Util functions'''
def add(e1, e2): return Bop(e1, Op.Op['add'], e2)
def sub(e1, e2): return Bop(e1, Op.Op['sub'], e2)
def mul(e1, e2): return Bop(e1, Op.Op['mul'], e2)
def div(e1, e2): return Bop(e1, Op.Op['div'], e2)

def fadd(e1, e2): return Bop(e1, Op.Op['fadd'], e2)
def fsub(e1, e2): return Bop(e1, Op.Op['fsub'], e2)
def fmul(e1, e2): return Bop(e1, Op.Op['fmul'], e2)
def fdiv(e1, e2): return Bop(e1, Op.Op['fdiv'], e2)


def concatPrograms(*prog_l):
	cmd_l = flatten([prog.cmd_l for prog in prog_l])
	return Prog(cmd_l)

def parseCmd(cmd):
	cmd_strip = cmd.strip()
	tokens = cmd_strip.split(' ')
	tokens_new = []
	for t in tokens:
		tokens_new.append(t.encode('utf-8'))
	cmd_new = resolveCmd(tokens_new,cmd)
	return cmd_new 


#Simple parser module
def resolveCmd(cmd, cmd_old):
	if cmd_old.encode('utf-8')[0] =='|':#signals metadata
		return IR.Statement('')
	elif cmd_old.encode('utf-8')[0] =='{' or cmd_old.encode('utf-8')[0] =='}':
		return IR.Statement('')
	elif cmd[0]==	'store':
		rule = RULES['Store']
		src_var = IR.Var(cmd[2].replace(',', ''), IR.Type(cmd[1].replace(',', '')))
		dest_var = IR.Var(cmd[4].replace(',', ''), IR.Type(cmd[3].replace(',', '')))
		align  = IR.Align(cmd[6].replace(',', ''))
		return IR.Store(src_var, dest_var, align)
	elif cmd[0] == 'br':
		rule = RULES['Branch']
		if len(cmd)>4:
			condn_var = IR.Var(cmd[2].replace(',', ''), IR.Type(cmd[1].replace(',', '')))
			label_t = IR.Label(cmd[4].replace(',', ''))
			label_f = IR.Label(cmd[6].replace(',', '')) 
			return IR.Branch(condn_var, label_t, label_f)
		else:
			condn_var = IR.Var('', '')
			label_t = IR.Label(cmd[2].replace(',', ''))
			label_f = IR.Label('')
			br = IR.Branch(condn_var, label_t, label_f)
			br.isCond = False
			return br
	else:
		return IR.Statement(cmd_old.encode('utf-8'))#return the same command for all others

#parse rules
RULES ={
	'Assn' : [ [IR.Var, IR.Op, IR.Expr] ],
	'Store' : [[IR.Type, IR.Var, IR.Type, IR.Var, IR.Align]],
	'Branch' : [[ IR.Type, IR.Var, IR.Label, IR.Label], [IR.Branch, IR.Label]],
	'Select' : [[ IR.Var, IR.Var, IR.Type, IR.Var, IR.Type, IR.Var]]
}