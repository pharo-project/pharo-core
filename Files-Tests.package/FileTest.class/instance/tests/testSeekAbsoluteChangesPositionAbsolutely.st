testSeekAbsoluteChangesPositionAbsolutely

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file seekAbsolute: 10.
	self assert: file position equals: 10