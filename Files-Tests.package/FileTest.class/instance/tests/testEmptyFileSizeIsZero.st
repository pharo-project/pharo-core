testEmptyFileSizeIsZero

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: 'asd'.
	file close; openForWrite.
	self assert: file size equals: 3