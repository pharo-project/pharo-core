testFileAtEnd

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	self assert: file atEnd.