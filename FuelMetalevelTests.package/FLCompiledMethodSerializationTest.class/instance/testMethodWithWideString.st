tests
testMethodWithWideString

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: self class >> #methodWithWideString.

	self assert: (materializedCompiledMethod valueWithReceiver: self arguments: #()) isWideString.