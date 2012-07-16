testing
testMethodsWithUnboundGlobals

	Smalltalk cleanOutUndeclared. 
	self assert: SystemNavigation new methodsWithUnboundGlobals isEmpty
	