testSeekRelativeMovesFromCurrentPosition

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file position: 3.
	file seekRelative: 2.
	self assert: file position equals: 5