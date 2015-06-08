testFileBufferedRead

	| string file buffer |
	string := 'an entire long string'.
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: string.
	file position: 0.
	
	buffer := ByteArray new: 2.
	
	file readInto: buffer startingAt: 1 count: 2.
	self assert: buffer asString equals: (string copyFrom: 1 to: 2).
	
	file readInto: buffer startingAt: 1 count: 2.
	self assert: buffer asString equals: (string copyFrom: 3 to: 4).
	
	file readInto: buffer startingAt: 1 count: 2.
	self assert: buffer asString equals: (string copyFrom: 5 to: 6).