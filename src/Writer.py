#base class for Codegen 
class Writer:

	def __init__(self, fileName):
		self.file = open(fileName, 'w')

	def printf(self, string, *args):
		self.file.write(string )

	# def print(self, str, *args):
	# 	self.file.write(str % args)
	# 	self.file.write('\n')

	def close(self):
		self.file.close()
