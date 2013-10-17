fullBrowse
	"I override my parent to call with proper package selection"
	
	self model class 
		openOnPackage: self selectedPackage package
		class: self selectedClass
		category: self selectedCategory
		method: self selectedMethod
		group: self selectedGroup
		showGroups: self showGroups
		showHierarchy: self showHierarchy
		showPackages: self showPackages
		showComment: self showComment 
		showInstance: self showInstance 
		showCategories: true
