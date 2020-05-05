from Util import *
from Writer import *
from enum import Enum

class Op:
	#Op = Enum('Op', 'add sub fadd fsub mul fmul udiv sdiv')
	Op = ['add', 'sub', 'fadd', 'fsub', 'mul', 'fmul', 'udiv', 'sdiv']
	#Op.print = lambda self, writer: writer.printf('%s', self.name)
	#Op.op_list = lambda op_str: list(map(lambda x: Op.Op[x], op_str.split()))

class Expr:
	def __init__(self, expr):
		self.expr = expr


class Label:
	def __init__(self, name):
		self.name = name


#expression operations
class Bool(Expr):
	def __init__(self, b):#self, b:bool
		self.b = b

class Uop(Expr):
	def __init__(self, op, e):# op:Op.Op, e:Expr
		assert op in Op.Op.op_list('- ~')
		self.op = op
		self.e = e
			
class Bop(Expr):
	def __init__(self, e1, op, e2):#e1:Expr, op:Op.Op, e2:Expr
		assert op in Op.Op.op_list('add sub mul fadd fsub') #only these supported now. Add more later as needed
		self.e1 = e1
		self.op = op
		self.e2 = e2


class Cmd:#default IR for all cmds not currently analyzed
	def __init__(self, cmd):
		self.cmd = cmd 


class CmdList(Cmd):
	def __init__(self, CmdList):
		self.CmdList = CmdList

#program object
class Prog(CmdList):
	def __init__(self, cmd_l):
		self. cmd_l = cmd_l

class Align:
	def __init__(self, val):
		self.val = val



#currently supported data types
class DataType:
	def __init__(self):
		self.intType = {'i32':32, 'i1':1, 'i64':64, 'i16':16}
		self.floatType= {'half':16, 'float':32, 'double':64, 'fp128':128}


class Type:
	def __init__(self, type):#type:str -- This may be changed in future for complex tranformations
		self.type = type

class Int:
	def __init__(self, num):
		self.num  = num			


#default for unsuported instructions
class Statement:
	def __init__(self, cmd):
		self.cmd = cmd

class Var:
	def __init__(self, idf, type, isLHS=False):
		self.idf = idf
		self.type = type
		self.isLHS = isLHS

class Assn:
	def __init__(self, var_l, var_r):
		self.var_l = var_l
		self.var_r = var_r




#curently supported instructions.Only these are needed foe the tranformations
class Branch:
	def __init__(self, condn_var, label_true, label_false, isCond = True):
		self.condn_var = condn_var
		self.label_true = label_true
		self.label_false = label_false
		self.isCond = isCond	

class Store:
	def __init__(self, src, dest, align):
		self.src = src
		self.dest = dest
		self.align = align

class Select:
	def __init__(self, condn_var, var_t, var_f):
		self.condn_var = condn_var
		self.var_t = var_t
		self.var_f = var_f

class Add:
	def __init__(self, var1, var2):
		self.var1 = var1
		self.var2 = var2


'''memory ops'''
#memory_ops = ['']
class MemoryOp:
	Op = Enum('Op', 'alloca load')


