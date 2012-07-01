tests
testClassInstanceVariableMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class class >> #classInstanceVariableForTesting:.

	self class classInstanceVariableForTesting: false.
	materializedCompiledMethod valueWithReceiver: self class arguments: #(true).
	self assert: self class classInstanceVariableForTesting.