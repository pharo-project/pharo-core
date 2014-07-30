fullBrowse

	^ self model class 
		openOnPackage: self selectedPackage
		class: self selectedClass
		category: self selectedCategory
		method: self selectedMethod
		group: self selectedGroup
		showGroups: self showGroups
		showHierarchy: self showPackages not
		showPackages: self showPackages
		showComment: self showComment 
		showInstance: self showInstance 
		showCategories: true
