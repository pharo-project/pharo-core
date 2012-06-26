tests
testCreateWithTraitOnClassSide
	"Tests materialization of a class not defined in the image, with a trait added to its class side"
	
	| aClassOrTrait materializedClassOrTrait aTrait |	
	aTrait := self newSecondaryTrait.
	aTrait duringTestCompileSilently: 'fortyTwo ^42'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait classSide addToComposition: aTrait.

	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert: 1 = materializedClassOrTrait classSide traits size.
	self assert: (materializedClassOrTrait classSide traits includes: aTrait).
	self assert: (aTrait users includes: materializedClassOrTrait classSide).
	self assert: materializedClassOrTrait classSide localSelectors isEmpty.
	self assert: 42 = ((self newInstanceFrom: materializedClassOrTrait) class perform: #fortyTwo).