tests
testSmallIntegerMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #fortyTwo.

	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #()).