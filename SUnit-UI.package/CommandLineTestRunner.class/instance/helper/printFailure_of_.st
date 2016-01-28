printFailure: anError of: aTestCase 
	self
		print: anError printString 
		short: ' [FAIL]' 
		of: aTestCase 