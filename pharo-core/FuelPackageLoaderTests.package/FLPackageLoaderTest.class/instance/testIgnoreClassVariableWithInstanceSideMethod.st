tests
testIgnoreClassVariableWithInstanceSideMethod
	"It should not serialize class variable values."

	| aClass name materializedClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass
		duringTestCompileSilently: 'initializeClassVariable  ClassVariable := 1';
		duringTestCompileSilently: 'classVariable  ^ClassVariable'.
	aClass new initializeClassVariable.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass new classVariable isNil.