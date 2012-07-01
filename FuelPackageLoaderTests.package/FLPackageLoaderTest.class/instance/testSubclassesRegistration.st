tests
testSubclassesRegistration
	"Tests consistency of classes' superclass."

	| aClass name materializedClass aSubclass subclassName materializeSubclass |
	aClass := self newClass.
	aSubclass := self newSubclassOf: aClass instanceVariableNames: '' classVariableNames:  ''. 

	name := aClass name.
	subclassName := aSubclass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.
	materializeSubclass := Smalltalk at: subclassName.

	self assert: materializedClass superclass == aClass superclass.
	self assert: (materializedClass superclass subclasses identityIncludes: materializedClass).
	self assert: (materializeSubclass superclass == materializedClass).
	self assert: (materializedClass subclasses identityIncludes: materializeSubclass).
	