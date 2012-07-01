tests
testWorkingDirectoryParent
	| path |
	path := Path workingDirectory parent.
	self assert: path size = 1.
	self assert: (path at: 1) = '..'