class Writer:

	def __init__(self, fileName):
		self.file = open(fileName, 'w')
		self.indentLevel = 0

	def printf(self, str, *args, indent=False):
		if indent:
			self.file.write('\t' * self.indentLevel)
		self.file.write(str % args)

	def print(self, str, *args):
		self.file.write(str % args)
		self.file.write('\n')

	def close(self):
		self.file.close()
