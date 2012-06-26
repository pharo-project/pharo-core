tests
testIgnoreSuperClassSideVariable
	"It should not serialize class side variable values even if they come from super."

	| aSuperclass aClass name materializedClass |
	aSuperclass := self newClass.
	aClass := self newSubclassOf: aSuperclass instanceVariableNames: '' classVariableNames: ''.
	
	aSuperclass class
		addInstVarNamed: 'classSideVariable'.
	aClass class
		duringTestCompileSilently: 'initializeClassSideVariable  classSideVariable := 1';
		duringTestCompileSilently: 'classSideVariable  ^classSideVariable'.
		
	aClass initializeClassSideVariable.
	self deny: aClass classSideVariable isNil.
	
	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass classSideVariable isNil.