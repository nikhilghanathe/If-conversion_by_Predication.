import os
import copy

class CFGNode():
	def __init__(self, name, cmdList):
		self.name = name
		self.id = -1# TBA
		self.cmdList = cmdList
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
		