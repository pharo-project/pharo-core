cleanClassesPackagesAndCategories
	Smalltalk globals removeClassNamed: self classInXSubcategoryName.
	Smalltalk organization removeCategory: self XPackageName asString.
	Smalltalk organization removeCategory: self XSubcategoryName.
	PackageOrganizer default unregisterPackage: (PackageOrganizer default packagesDictionary at: self XPackageName).
	self allManagers
		detect: [ :each | each packageName = self XPackageName ]
		ifFound: [ :mCPackage | mCPackage unregister ]