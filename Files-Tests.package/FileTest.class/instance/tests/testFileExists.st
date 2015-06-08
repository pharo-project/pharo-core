testFileExists

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	self assert: file exists.
	file delete.