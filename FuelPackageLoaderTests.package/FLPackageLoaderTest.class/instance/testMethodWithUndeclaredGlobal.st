tests
testMethodWithUndeclaredGlobal

	| name materializedClass aClass |
	Smalltalk globals removeKey: #FLGlobalVariableForTesting ifAbsent: [].
	aClass := self newClass.
	aClass class duringTestCompileSilently: 'foo  ^ FLGlobalVariableForTesting'.
	
	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: (materializedClass class >> #foo valueWithReceiver: aClass arguments: #()) isNil.
	Smalltalk globals at: #FLGlobalVariableForTesting put: 42.
	self assert: (materializedClass class >> #foo valueWithReceiver: aClass arguments: #()) = 42.
