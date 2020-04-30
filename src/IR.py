from Util import *
from Writer import *

class Op:
	Op = Enum('Op', 'add sub fadd fsub mul fmul udiv sdiv ')
	Op.print = lambda self,writer: writer.printf('%s', self.name)
	Op.op_list = lambda op_str: list(map(lambda x: Op.Op[x], op_str.split()))

class Expr:
	def __init__(self, expr):
		self.expr = expr


class Label:
	def __init__(self, name):
		self.name = name


#expression operations
class Bool(Expr):
	def __init__(self, b:bool):
		self.b = b

class Uop(Expr):
	def __init__(self, op:Op.Op, e:Expr):
		assert op in Op.Op.op_list('- ~')
		self.op = op
		self.e = e
			
class Bop(Expr):
	def __init__(self, e1:Expr, op:Op.Op, e2:Expr):
		assert op in Op.Op.op_list('add sub mul fadd fsub') #only these supported now. Add more later as needed
		self.e1 = e1
		self.op = op
		self.e2 = e2


class Cmd:
	pass

class CmdList:
	pass


class Align:
	def __init__(self, val):
		self.val = val

#currently supported data types
class DataType:
	intType = {'i32':32, 'i1':1, 'i64':64, 'i16':16
				}
	floatType{'half':16, 'float':32, 'double':64, 'fp128':128}


#curently supported instructions.Only these are needed foe the tranformations
class BR:
	def__init__(self, condn_var, label_true, label_false):
		self.condn_var = condn_var
		self.label_true = label_true
		self.label_false = label_false

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





'''IR Util functions'''
def add(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['add'], e2)
def sub(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['sub'], e2)
def mul(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['mul'], e2)
def div(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['div'], e2)

def fadd(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['fadd'], e2)
def fsub(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['fsub'], e2)
def fmul(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['fmul'], e2)
def fdiv(e1:Expr, e2:Expr) -> Expr: return Bop(e1, Op.Op['fdiv'], e2)
