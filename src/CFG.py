import os
import copy
import IR

#base class for CDFG
class CFGNode():
	def __init__(self, name, id, cmdList):
		self.name = name
		self.id = id
		self.cmdList = cmdList
		self.cmdIR_l = []
		self.edges = []
		self.producers = []
		self.consumers= []
		self.isHead = False
		self.isTBlock = False
		self.isFBlock = False
		self.isTail = False

	def addEdge(self, edge):
		edges = copy.deepcopy(self.edges)
		edges.append(edge)
		self.edges = edges
		self.consumers = edges#update consumers
	
	def setProducer(self, edge):
		edges = copy.deepcopy(self.producers)
		edges.append(edge)
		self.producers = edges
	
	def getEdges(self):
		return self.edges

	def getProducers(self):
		return self.producers

	def getConsumers(self):
		return self.consumers

	def setCmdIR_l(self, cmd_l):
		self.cmdIR_l = copy.deepcopy(cmd_l)

	def getCmdIR_l(self):
		return self.cmdIR_l



#base class fo conditional blocks
class BranchBlock():
	def __init__(self, id, head):
		self.id = id
		self.head = head
		self.TB = 0
		self.FB = 0
		self.tail = 0
		self.condn_var = IR.Var('', '') 
		self.TB_st = []
		self.FB_st = []

