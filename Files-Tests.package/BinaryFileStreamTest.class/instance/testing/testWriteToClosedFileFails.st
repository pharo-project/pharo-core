testWriteToClosedFileFails
	
	| fileStream |
	fileStream := self fileStreamForFileNamed: 'testFile'.
	fileStream file close.
	self should: [ fileStream nextPut: 1 ] raise: Error.