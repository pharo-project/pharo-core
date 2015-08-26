printFailure: anError of: aTestCase 
	self stderr yellow.
	self
		print: anError printString 
		short: ' [FAIL]' 
		of: aTestCase 