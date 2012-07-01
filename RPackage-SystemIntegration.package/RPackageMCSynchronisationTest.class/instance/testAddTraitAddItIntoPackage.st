tests - operations on traits
testAddTraitAddItIntoPackage
	"self debug: #testAddCategoryCreatesPackage"

	|tmpPackage trait|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: 'XXXXX').
	tmpPackage := self organizer packageNamed: #XXXXX.
	trait := self createNewTraitNamed: 'NewTrait' inCategory: 'XXXXX'.
	self assert: (tmpPackage definesClass: trait).