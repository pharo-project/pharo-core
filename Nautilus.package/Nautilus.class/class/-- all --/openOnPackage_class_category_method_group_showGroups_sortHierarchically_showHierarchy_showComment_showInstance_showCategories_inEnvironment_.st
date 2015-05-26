openOnPackage: selectedPackage class: selectedClass category: selectedCategory method: selectedMethod group: selectedGroup showGroups: showGroups sortHierarchically: sortHierarchically showHierarchy: showHierarchy showComment: showComment  showInstance: showInstance showCategories: showCategories inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	
	instance package: selectedPackage class: selectedClass category: selectedCategory method: selectedMethod.
	instance selectedGroup: selectedGroup.	
	instance
		showGroups: showGroups;
		sortHierarchically: sortHierarchically;
		showComment: showComment;
		showInstance: showInstance;
		showCategories: showCategories.
	
	instance open.
	instance ui showHierarchy: showHierarchy.

	^ instance