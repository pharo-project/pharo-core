tests
testTraitLoad
	"Tests that traits are correctly reinserted in the system."

	| aClass name materializedClass  materializedTrait aTrait traitName |
	aClass := self newClass.
	aTrait := self newTraitSuffixed: 'aTrait'.
	name := aClass name.
	aTrait duringTestCompileSilently: 'instanceBindings  Object name. ', name , '  name.'.
	aClass addToComposition: aTrait.
	traitName := aTrait name.
	
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.
	materializedTrait := Smalltalk at: traitName.

	self assert: (materializedClass traitComposition includesTrait: materializedTrait).
	self assert: ((materializedTrait >> #instanceBindings) literalAt: 2) == (Smalltalk globals associationAt: #Object).
	self assert: ((materializedTrait >> #instanceBindings) literalAt: 3) == (Smalltalk globals associationAt: name).
	