tests
testExternalSuperclass
	"Tests consistency of classes' superclass."

	| aClass name materializedClass |
	aClass := self newClass.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: materializedClass superclass == aClass superclass.
	self assert: (materializedClass superclass subclasses identityIncludes: materializedClass).