tests - operations on categories
testRemoveCategoryDoesNotRemoveThePackage
	"test that when we remove a category, the corresponding RPackage is removed from the organizer"
	
	|XPackage class|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: #XXXXX).
	Smalltalk organization removeCategory: 'XXXXX'.
	self assert: (self organizer includesPackageNamed: #XXXXX).