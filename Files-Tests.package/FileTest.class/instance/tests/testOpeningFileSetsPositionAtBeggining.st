testOpeningFileSetsPositionAtBeggining

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: 'aaa'.
	file close.
	file openForWrite.
	self assert: file position equals: 0.