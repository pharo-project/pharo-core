tests
testNamedPrimitiveMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: Integer >> #bitAnd:.
	
	self assert: (materializedCompiledMethod literalAt: 1) third = 0.
	self assert: (materializedCompiledMethod literalAt: 1) fourth = 0.
	self assert: 16r30 = (materializedCompiledMethod valueWithReceiver: 16r3F arguments: #(16rF0)).
	self assert: (materializedCompiledMethod literalAt: 1) third = 0.
	self deny: (materializedCompiledMethod literalAt: 1) fourth = 0.
	