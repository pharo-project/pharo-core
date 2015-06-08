testReadMultipleBytes
	
	| file |
	file := self fileStreamForFileNamed: 'testFile'.
	file nextPut: 1.
	file nextPut: 2.

	file := self fileStreamForFileNamed: 'testFile'.
	self assert: (file next: 2) equals: #[1 2].