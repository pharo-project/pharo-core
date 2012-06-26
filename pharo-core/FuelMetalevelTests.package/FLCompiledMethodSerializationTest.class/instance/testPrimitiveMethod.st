tests
testPrimitiveMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: Object >> #perform:.

	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #(fortyTwo)).