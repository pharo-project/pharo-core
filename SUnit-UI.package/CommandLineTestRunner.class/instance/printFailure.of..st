helper
printFailure: anError of: aTestCase 
	stderr red.
	self
		print: anError printString 
		short: ' [FAIL]' 
		of: aTestCase 