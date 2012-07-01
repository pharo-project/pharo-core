tests
testBasicMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self materializedCompiledMethod: Object >> #yourself.

	self assert: self == (materializedCompiledMethod valueWithReceiver: self arguments: #()).