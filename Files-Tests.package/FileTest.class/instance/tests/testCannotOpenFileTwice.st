testCannotOpenFileTwice

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	self should: [ file open ] raise: Error.