testWriteMultipleBytes
	
	| file |
	file := self fileStreamForFileNamed: 'testFile'.
	file nextPutAll: #[1 2].

	file := self fileStreamForFileNamed: 'testFile'.
	self assert: file next equals: 1.
	self assert: file next equals: 2.