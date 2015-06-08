testFileWriteFullString

	| string file |
	string := 'an entire long string'.
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: string.
	self assert: file position equals: string size.
	file position: 0.
	self assert: (file read: string size) asString equals: string