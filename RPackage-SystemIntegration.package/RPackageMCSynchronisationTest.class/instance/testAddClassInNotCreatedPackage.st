tests - operations on classes
testAddClassInNotCreatedPackage
	"test that when we add a class in an existing category, it does not create a new package"
	"self debug: #testAddClassInNotCreatedPackage"
	
	|tmpPackage class|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: #XXXXX).
	tmpPackage := self organizer packageNamed: #XXXXX.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self assert: (self organizer packageNamed: #XXXXX) = tmpPackage. 
	self assert: (class package = tmpPackage)