tests
testPackageWithTwoCategories
	"It should serialize multiple categories by package."

	| aStream classNames |
	self newClassInCategory: 'One'.
	self newClassInCategory: 'Two'.
	classNames := classFactory createdClassNames.

	self storeRemoveAndLoadStubPackage.
	
	self assert: (PackageOrganizer default packageNames includes: classFactory packageName) description: 'The package should be present in PackageOrganizer default.'.