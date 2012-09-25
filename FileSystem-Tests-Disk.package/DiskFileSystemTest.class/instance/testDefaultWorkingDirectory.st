tests
testDefaultWorkingDirectory
	| ref |
	ref := filesystem workingDirectory.
	self assert: (('file://', Smalltalk vm imagePath) beginsWith: ref asString)