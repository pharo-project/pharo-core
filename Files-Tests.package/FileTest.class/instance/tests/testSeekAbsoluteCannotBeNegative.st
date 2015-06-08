testSeekAbsoluteCannotBeNegative

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	self should: [file seekAbsolute: -10] raise: Error