import os 
import subprocess
import shutil
import pygraphviz
import json
from CFGNode import * 


def convertToLL(fname):
	path = os.path.join('..', '..', 'benchmarks', fname )
	
	if not os.path.exists(os.path.join('tmp')):
		os.makedirs(os.path.join('tmp'))
	os.chdir(os.path.join('tmp'))

	#copy file
	shutil.copyfile(path, fname)

	cmd = ['clang',  '-S', '-emit-llvm', fname]
	process = subprocess.call(cmd)
	if process == 1:
		print("FAILED Creating IR!!\n")
	else:
		print("SUCCESS Crating IR")
	os.chdir(os.path.join(".."))


def runInstNamerPass(fname):
	name = fname[:-2] #strip the .c from name
	fname_ll = os.path.join( name+'.ll')
	fname_ll_named = os.path.join( name+'_named.ll')	
	cmd = ['opt',  '-S', '-instnamer', fname_ll]
	
	os.chdir(os.path.join('tmp'))	
	with open(fname_ll_named, 'w') as fp:
		process = subprocess.call(cmd, stdout=fp)
	if process == 1:
		print("FAILED naming IR!!\n")
	else:
		print("SUCCESS naming IR")
	os.chdir(os.path.join(".."))


def getCFG(fname):
	name = fname[:-2] #strip the .c from name
	fname_ll_named = os.path.join( name+'_named.ll')	
	cfgfName = os.path.join( name+'_cfg.dot')	
	cmd = ['opt',  '-dot-cfg', fname_ll_named]
	
	os.chdir(os.path.join('tmp'))	
	with open(cfgfName, 'w') as fp:
		process = subprocess.call(cmd, stdout=fp)
	if process == 1:
		print("FAILED Creating CFG!!\n")
	else:
		print("SUCCESS Creating CFG")


	#convert into json foreasy parsing

	convertToJson(fname)
	os.chdir(os.path.join(".."))

def convertToJson(fname):
    G = pygraphviz.AGraph()
    filename = 'cfg.'+fname[:-2]+'.dot' #name of generated dot file
    cfg_json = 'cfg.json'
    cmd  = ['dot', '-Txdot_json',  '-o', cfg_json, filename]
    process = subprocess.call(cmd)
    if process == 1: print("FAILED converting CFG to json!!\n")
    else:print("SUCCESS converting CFG to json")


#extract bbs from cfg data
def getBBs(cfg):
	bb_data = cfg['objects']
	bb_dict = {}
	for node in bb_data:
		id = node['_gvid']
		label = node['label']
		name, cmdList = getInstructions(label)
		node = CFGNode(name, cmdList)
		bb_dict.update({name:node})

	bb_data = cfg['edges']
	for edge in bb_data:
		src = edge['_gvid']
		tail, head = edge['tail'], edge['head']
		node = bb_dict[tail]
		node.addEdge(head)#update consumer
		node = bb_dict[head]
		node.setProducer(tail)

	return bb_dict

def getInstructions(label):
	cmds = label.split('\\l')
	name= cmds[0][1:-1]
	cmdList = cmds[1:]
	return name, cmdList


def constructCFG(cfg, ):
	cfg_new = {}
	for name, node in cfg.items():
		node_new = CFGNode





'''helper functions'''
def writeCFG(cfg, fname=''):
	if fname=='': fp = open(os.path.join('debug.json'), 'w')
	else: fp = open(os.path.join(fname), 'w')

	dict_t = {}
	for name, node in cfg.items():
		dict_t.update({'name': name})
		dict_t.update({'id': id})
		dict_t.update({'cmdList': cmdList})
		dict_t.update({'producers': producers})
		dict_t.update({'consumers': consumers})
		dict_t.update({'isHead': isHead})
		dict_t.update({'isTBlock': isTBlock})
		dict_t.update({'isFBlock': isFBlock})
		dict_t.update({'isTail': isTail})

	json.dump(dict_t, fp, indent=4)
	fp.close()

