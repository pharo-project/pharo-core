printError: anError of: aTestCase 
	self stderr red.
	self
		print: anError printString 
		short: ' [ERROR]' 
		of: aTestCase 