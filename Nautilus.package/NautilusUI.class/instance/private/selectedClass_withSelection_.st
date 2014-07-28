selectedClass: aClass withSelection: aPackage
	self model
		package: aPackage
		class: aClass
		category: nil
		method: nil.
	self packageWidget resetPackagesSelection.
	self packageWidget selectPackage: aPackage.
	self updateBothView