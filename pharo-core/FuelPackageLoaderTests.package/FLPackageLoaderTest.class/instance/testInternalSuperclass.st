tests
testInternalSuperclass
	"Tests consistency of classes' superclass."

	| aClass aSuperclass className superclassName materializedClass materializedSuperclass |
	aSuperclass := self newClass.
	aClass := self newSubclassOf: aSuperclass instanceVariableNames: '' classVariableNames: ''.

	superclassName := aSuperclass name.
	className := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedSuperclass := Smalltalk at: superclassName.
	materializedClass := Smalltalk at: className.

	self assert: materializedClass superclass == materializedSuperclass.
	self assert: (materializedClass superclass subclasses includes: materializedClass).
	self assert: materializedSuperclass subclasses = (Array with: materializedClass).