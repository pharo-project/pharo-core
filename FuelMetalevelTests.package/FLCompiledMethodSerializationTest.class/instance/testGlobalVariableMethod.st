tests
testGlobalVariableMethod

  	| materializedCompiledMethod aClass |
	Smalltalk globals at: #FLGlobalVariableForTesting put: false.
	aClass := self newClass
		duringTestCompileSilently: 'globalVariableForTestingMethod  ^FLGlobalVariableForTesting';
		yourself.

	self analyzer considerGlobal: #FLGlobalVariableForTesting.
	materializedCompiledMethod := self materializedCompiledMethod: aClass >> #globalVariableForTestingMethod.
	Smalltalk globals at: #FLGlobalVariableForTesting put: true.
	self assert: (materializedCompiledMethod valueWithReceiver: aClass arguments: #()).
	self deny: materializedCompiledMethod == (aClass compiledMethodAt: #globalVariableForTestingMethod).