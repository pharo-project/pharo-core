testOpeningFileObjectCreatesFile

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	self assert: 'asd.txt' asFileReference exists