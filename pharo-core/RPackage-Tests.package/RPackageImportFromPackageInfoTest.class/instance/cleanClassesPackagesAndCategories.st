setup
cleanClassesPackagesAndCategories

	|mCPackage|
	Smalltalk globals removeClassNamed: self classInXSubcategoryName.
	Smalltalk organization removeCategory: self XPackageName asString.
	Smalltalk organization removeCategory: self XSubcategoryName.
	mCPackage := self allManagers 
							detect: [:each | each packageName = self XPackageName] 
							ifNone: [nil].
	mCPackage ifNotNil: [mCPackage unregister].
			