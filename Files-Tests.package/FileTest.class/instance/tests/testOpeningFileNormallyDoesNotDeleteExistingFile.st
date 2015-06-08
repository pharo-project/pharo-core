testOpeningFileNormallyDoesNotDeleteExistingFile

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: 'aaa'.
	file close.
	file := File openFileNamed: 'asd.txt' asFileReference fullName.
	self assert: file size equals: 3.