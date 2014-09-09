fullBrowseFromTag: aPackageTag
	
	self model class 
		openOnPackage: aPackageTag asNautilusSelection
		class: self selectedClass
		category: self selectedCategory
		method: self selectedMethod
		group: self selectedGroup
		showGroups: self showGroups
		sortHierarchically: self sortHierarchically
		showHierarchy: self showHierarchy
		showComment: self showComment 
		showInstance: self showInstance 
		showCategories: true
