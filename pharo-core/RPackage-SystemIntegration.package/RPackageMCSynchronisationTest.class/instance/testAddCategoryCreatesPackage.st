tests - operations on categories
testAddCategoryCreatesPackage
	"test that when we add a category that does not yet correspond to an existing package, a new package is created"
	"self debug: #testAddCategoryCreatesPackage"
	
	self addXCategory.
	self assert: (self organizer includesPackageNamed: #XXXXX)