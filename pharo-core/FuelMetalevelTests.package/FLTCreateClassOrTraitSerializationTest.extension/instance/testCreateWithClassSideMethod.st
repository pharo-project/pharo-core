tests
testCreateWithClassSideMethod
	"Tests materialization of a class-side method in a class or trait not defined in the image."

	| aClassOrTrait materializedClassOrTrait category |
	category := 'tests-class-side'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait classSide duringTestCompileSilently: 'fortyTwo ^42' classified: category.

	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert: (materializedClassOrTrait classSide includesSelector: #fortyTwo).
	self assert: #(fortyTwo) asSet = materializedClassOrTrait classSide localSelectors.
	self assert: category = (materializedClassOrTrait classSide whichCategoryIncludesSelector: #fortyTwo).
	self assert: 42 = ((self newInstanceFrom: materializedClassOrTrait) class perform: #fortyTwo).