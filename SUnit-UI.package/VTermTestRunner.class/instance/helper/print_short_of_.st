print: aLongErrorMesssage short: aShortErrorMesssage of: aTestCase 
	| testCaseString short offset cr |
	
	cr := OSPlatform current lineEnding.
	short := aShortErrorMesssage ifNil: [ '' ].
	
	testCaseString := aTestCase printString.
	self stdout 
		startOfLine; clearToEnd; nextPutAll: testCaseString.
	
	"Let's see if we have enough space to print the error"
	offset := 80 - testCaseString size - aLongErrorMesssage size.
	offset < 1
		ifTrue: [ 
			self stdout startOfLine; right: (80 - short size); 
				nextPutAll: short ]
		ifFalse: [ 
			self stdout right: offset;
				nextPutAll: aLongErrorMesssage ].
		
	self stdout clear.
	self stdout << cr