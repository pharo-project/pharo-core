testFileDelete

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file delete.
	self deny: file exists.