testFileWriteBufferedString

	| string file |
	string := 'an entire long string'.
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAmount: 2 from: string startingAt: 3.
	
	self assert: file position equals: 2.
	file position: 0.
	self assert: (file read: 2) asString equals: (string copyFrom: 3 to: 4)