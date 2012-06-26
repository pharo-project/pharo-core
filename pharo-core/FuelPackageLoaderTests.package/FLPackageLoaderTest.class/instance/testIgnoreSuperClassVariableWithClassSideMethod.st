tests
testIgnoreSuperClassVariableWithClassSideMethod
	"It should not serialize class variable values even if it comes from super."

	| aSuperclass aClass name materializedClass |
	aSuperclass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass := self newSubclassOf: aSuperclass instanceVariableNames: '' classVariableNames: ''.

	aClass class
		duringTestCompileSilently: 'initializeClassVariable  ClassVariable := 1';
		duringTestCompileSilently: 'classVariable  ^ClassVariable'.
	aClass initializeClassVariable.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass classVariable isNil.