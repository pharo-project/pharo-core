helper
print: anLongErrorMesssage short: aShortString of: aTestCase 
	| testCaseString offset |
	testCaseString := aTestCase printString.
	
	stdout 
		startOfLine; clearToEnd; nextPutAll: testCaseString.
	
	"Let's see if we have enough space to print the error"
	offset := 80 - testCaseString size - anLongErrorMesssage size.
	offset < 1
		ifTrue: [ 
			stdout startOfLine; right: (80 - aShortString size); 
				nextPutAll: aShortString ]
		ifFalse: [ 
			stdout right: offset;
				nextPutAll: anLongErrorMesssage ].
		
	stdout
		clear; lf.