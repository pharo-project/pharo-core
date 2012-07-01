tests - operations on categories
testRemoveCategoryWhenMCPackageExistDoesNotRemoveThePackage
	"test that when we remove a category (usually from the class browser), and that a corresponding MCPackage exist, the RPackage still exist till the MCPackage has been unloaded"
	
	|XPackage class mCPackage|
	"let's create the category and the MCPackage"
	self addXCategory.
	mCPackage := MCWorkingCopy forPackage: (MCPackage new name: 'XXXXX').
	"we make sure that the RPackage has been create (only one time)"
	self assert: (self organizer includesPackageNamed: #XXXXX).
	self assert: (self organizer packages select: [:each | each name = 'XXXXX']) size = 1.
	"we remove the category"
	Smalltalk organization removeCategory: 'XXXXX'.
	"we make sure the RPackage still exist"
	self assert: (self organizer includesPackageNamed: #XXXXX).
	
	"for now, this no longer the expected behavior. See comment in RPackageOrganizer>>update:"
	"mCPackage unregister.
	self deny: (anOrganizer includesPackageNamed: #XXXXX)."	