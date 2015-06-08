testReadFullFileIsAtEnd
	
	| file |
	file := self fileStreamForFileNamed: 'testFile'.
	file nextPut: 1.
	
	file := self fileStreamForFileNamed: 'testFile'.
	file next.
	self assert: file atEnd.