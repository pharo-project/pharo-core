tests
testCreateWithMethod
	"Tests materialization of a compiled method in a class not defined in the image."
	
	| aClassOrTrait materializedClassOrTrait category |
	category := 'tests-instance-side'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait duringTestCompileSilently: 'fortyTwo ^42' classified: category.

	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert: (materializedClassOrTrait includesSelector: #fortyTwo).
	self assert: #(fortyTwo) asSet = materializedClassOrTrait localSelectors.
	self assert: category = (materializedClassOrTrait whichCategoryIncludesSelector: #fortyTwo).
	self assert: 42 = ((self newInstanceFrom: materializedClassOrTrait) perform: #fortyTwo).