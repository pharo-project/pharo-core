tests
testIgnoreClassSideVariable
	"It should not serialize class side variable values."

	| aClass name materializedClass |
	aClass := self newClass.
	aClass class
		addInstVarNamed: 'classSideVariable';  
		duringTestCompileSilently: 'initializeClassSideVariable  classSideVariable := 1';
		duringTestCompileSilently: 'classSideVariable  ^classSideVariable'.
	aClass initializeClassSideVariable.
	self deny: aClass classSideVariable isNil.
	
	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass classSideVariable isNil.