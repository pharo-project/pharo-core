tests
testIgnoreSuperClassVariableWithInstanceSideMethod
	"It should not serialize class variable values."

	| aSuperclass aClass name materializedClass |
	aSuperclass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass := self newSubclassOf: aSuperclass instanceVariableNames: '' classVariableNames: ''.
	aClass
		duringTestCompileSilently: 'initializeClassVariable  ClassVariable := 1';
		duringTestCompileSilently: 'classVariable  ^ClassVariable'.
	aClass new initializeClassVariable.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass new classVariable isNil.