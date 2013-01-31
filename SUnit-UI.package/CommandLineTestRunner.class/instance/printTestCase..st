printing
printTestCase: aTestCase 
	stderr startOfLine; clearToEnd; green; print: aTestCase; clear.
	self printProgress.