tests
testIgnoreClassVariableWithClassSideMethod
	"It should not serialize class variable values."

	| aClass name materializedClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class
		duringTestCompileSilently: 'initializeClassVariable  ClassVariable := 1';
		duringTestCompileSilently: 'classVariable  ^ClassVariable'.
	aClass initializeClassVariable.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass classVariable isNil.