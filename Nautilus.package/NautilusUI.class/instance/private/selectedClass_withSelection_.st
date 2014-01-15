selectedClass: aClass withSelection: aPackage
	self model
		package: aPackage
		class: aClass
		category: nil
		method: nil.
	packagesSelection removeAll.
	packagesSelection at: aPackage put: true.
	self updateBothView