tests - operations on traits
testAddTraitInNotCreatedPackage
	"test that when we add a trait in an existing category, it does not create a new package"
	
	|tmpPackage trait|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: 'XXXXX').
	tmpPackage := self organizer packageNamed: #XXXXX.
	trait := self createNewClassNamed: 'NewTrait' inCategory: 'XXXXX'.
	self assert: (self organizer packageNamed: #XXXXX) = tmpPackage. 
	self assert: (trait package = tmpPackage)