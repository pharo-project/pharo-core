tests
testMethodWithAllTypeOfLiterals

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #methodWithAllTypeOfLiterals.

	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #()).