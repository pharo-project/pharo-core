tests
testDefaultWorkingDirectory
	| ref |
	ref := filesystem workingDirectory.
	self assert: (Smalltalk vm imagePath beginsWith: ref asString)