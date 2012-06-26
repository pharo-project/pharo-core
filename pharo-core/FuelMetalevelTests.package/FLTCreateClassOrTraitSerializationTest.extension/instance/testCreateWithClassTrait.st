tests
testCreateWithClassTrait
	"Tests materialization of a class not defined in the image, with a class trait"
	
	| aClassOrTrait materializedClassOrTrait aTrait |	
	aTrait := self newSecondaryTrait.
	aTrait classSide duringTestCompileSilently: 'fortyTwo ^42'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait addToComposition: aTrait.

	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert: 1 = materializedClassOrTrait traits size.
	self assert: (materializedClassOrTrait traits includes: aTrait).
	self assert: (aTrait users includes: materializedClassOrTrait).
	self assert: materializedClassOrTrait classSide localSelectors isEmpty.
	self assert: 42 = ((self newInstanceFrom: materializedClassOrTrait) class perform: #fortyTwo).