tests
testInstanceVariableMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #atInstanceVarForTestingPut:.

	instanceVarForTesting := false.
	materializedCompiledMethod valueWithReceiver: self arguments: #(true).
	self assert: instanceVarForTesting.