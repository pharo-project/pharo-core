testOpenFile
	
	| file |
	file := self fileStreamForFileNamed: 'testFile'.
	
	self assert: (FileSystem workingDirectory / 'testFile') exists