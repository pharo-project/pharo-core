tests - operations on traits
testAddTraitUpdateTheOrganizer
	"test that when we add a trait, the organizer 'classPackageMapping' dictionary is updated, so that the class is linked to its package and so that we can access its parent package"
	
	|tmpPackage trait|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: 'XXXXX').
	tmpPackage := self organizer packageNamed: #XXXXX.
	trait := self createNewTraitNamed: 'NewTrait' inCategory: 'XXXXX'.
	self assert: (self organizer packageOf: trait) = tmpPackage.