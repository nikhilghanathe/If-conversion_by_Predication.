import sys
import pygraphviz
import json
import os

def convertToJson():
    G = pygraphviz.AGraph()
    filename = sys.argv[1]
    #G.read("foo.dot")
    G.read(filename)
    data = {}
    for n in G.nodes():
        row = { n : [G.has_edge(n, tn)*1 for tn in G.nodes()] }
        data[].append(row)
    outfile = os.path.join('cfg.json')
    fp = open(outfile, 'w')
    json.dump(adj, fp,  indent=4)
    fp.close()
    #sys.stdout.write("%s\n" % (json.dumps(adj)))

if __name__ == "__main__":
    convertToJson()