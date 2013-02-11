helper
printFailure: anError of: aTestCase 
	self stderr red.
	self
		print: anError printString 
		short: ' [FAIL]' 
		of: aTestCase 