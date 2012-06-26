testing
testMethodsWithUnboundGlobals

	Smalltalk cleanOutUndeclared. 
	self assert: SystemNavigation default methodsWithUnboundGlobals isEmpty
	