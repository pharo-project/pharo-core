testing
testUndeclared
	Smalltalk cleanOutUndeclared. 
	self assert: Undeclared isEmpty
	