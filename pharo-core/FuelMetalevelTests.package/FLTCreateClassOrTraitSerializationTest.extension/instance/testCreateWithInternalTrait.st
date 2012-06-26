tests
testCreateWithInternalTrait
	"Tests materialization of a class not defined in the image, with a trait, both internally serialized"
	
	| aClassOrTrait aTrait serializedArray materializedArray materializedClassOrTrait materializedTrait |	
	aTrait := self newSecondaryTrait.
	aTrait duringTestCompileSilently: 'fortyTwo ^42'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait addToComposition: aTrait.
	serializedArray := Array with: aClassOrTrait with: aTrait.

	materializedArray := self resultOfSerializeRemoveAndMaterializeAll: serializedArray.
	materializedClassOrTrait := materializedArray first.
	materializedTrait := materializedArray second.

	self assert: 1 = (materializedClassOrTrait traits size).
	self assert: (materializedClassOrTrait traits includes: materializedTrait).
	self assert: (materializedTrait users includes: materializedClassOrTrait).
	self assert: materializedClassOrTrait localSelectors isEmpty.
	
	self flag: #fixIt.
	"For the moment I comment this test because it throws a notification of method recategorized which ends up in an exception with Nautilus"
	"self assert: 42 = ((self newInstanceFrom: materializedClassOrTrait) perform: #fortyTwo).
"