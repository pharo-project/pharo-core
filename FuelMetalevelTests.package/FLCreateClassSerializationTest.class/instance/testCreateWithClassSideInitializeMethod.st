tests
testCreateWithClassSideInitializeMethod
	"Tests materialization of a class-side #initialize method in a class or trait not defined in the image. It makes sure that Fuel doesn't call it automatically"

	| aClassOrTrait materializedClassOrTrait category |
	category := 'tests-initialize'.
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait classSide duringTestCompileSilently: 'initialize self error: ''Fuel should not automatically call #initialize'' ' classified: category.

	self shouldnt: [materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait] raise: Error.
	self should: [ (self newInstanceFrom: materializedClassOrTrait) class perform: #initialize] raise: Error.

	self assert: (materializedClassOrTrait classSide includesSelector: #initialize).
	self assert: #(initialize) asSet = materializedClassOrTrait classSide localSelectors.
	self assert: category = (materializedClassOrTrait classSide whichCategoryIncludesSelector: #initialize).
	
