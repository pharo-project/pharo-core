tests
testBlockClosureMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #fortyTwoBlockClosure.

	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #()) value
