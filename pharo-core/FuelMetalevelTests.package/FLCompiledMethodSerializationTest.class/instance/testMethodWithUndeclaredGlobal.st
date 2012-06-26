tests
testMethodWithUndeclaredGlobal

	| materialized aClass |
	Smalltalk globals removeKey: #FLGlobalVariableForTesting ifAbsent: [].
	aClass := self newClass.
	aClass class duringTestCompileSilently: 'foo  ^ FLGlobalVariableForTesting'.
	
	materialized := self materializedCompiledMethod: aClass class >> #foo.

	self assert: (materialized valueWithReceiver: aClass arguments: #()) isNil.
	Smalltalk globals at: #FLGlobalVariableForTesting put: 42.
	self assert: (materialized valueWithReceiver: aClass arguments: #()) = 42.
