testOpenFileForReadDoesNotDeleteExistingFile

	| file |
	file := File forceNewFileNamed: 'asd.txt' asFileReference fullName.
	file writeAll: 'aaa'.
	file close.
	file := File openReadOnlyFileNamed: 'asd.txt' asFileReference fullName.
	self assert: file size equals: 3.