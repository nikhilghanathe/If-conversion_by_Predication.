import os
import argparse
from Util import *
from CFGNode import *
import json
import Config


class Predicate():
	def __init__(self, fileName):
		self.fileName = fileName
		self.cfgfname = 'cfg.json'
		self.cfg = {}

	def parseJson(self):
		fp = open(self.cfgfname, 'r')
		cfgData = json.load(fp)
		cfg = getBBs(cfgData)
		if Config.DEBUG:
			writeCFG(cfg)
		sss


	def run(self):
		
		os.chdir(os.path.join('tmp'))


		#read json file and get the basic blocks
		self.parseJson()

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

