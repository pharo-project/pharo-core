tests
testClassVariableMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #classVariableForTesting:.

	self classVariableForTesting: false.
	materializedCompiledMethod valueWithReceiver: self arguments: #(true).
	self assert: self classVariableForTesting.