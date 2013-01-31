helper
printFailure: anError of: aTestCase 
	| errorString testCaseString offset |
	
	errorString := anError printString.
	testCaseString := aTestCase printString.
	
	stdout 
		startOfLine; clearToEnd;
		red; nextPutAll: testCaseString.
	
	"Let's see if we have enough space to print the error"
	offset := 80 - testCaseString size - errorString size.
	offset < 1
		ifTrue: [ stdout right: (80 - 6); nextPutAll: '[FAIL]' ]
		ifFalse: [ stdout right: offset; nextPutAll: errorString ].
		
	stdout
		clear; lf.