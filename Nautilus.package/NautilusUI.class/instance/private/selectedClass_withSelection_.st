selectedClass: aClass withSelection: aPackage
	self model
		package: aPackage
		class: aClass
		category: nil
		method: nil.
	self resetPackageGroupsListSelection.
	self packageWidget selectPackage: aPackage.
	self updatePackageGroupAndClassList