with: aNautilus
	
	self 
		selectedPackage: aNautilus selectedPackage;
		selectedCategory: aNautilus selectedCategory.
		aNautilus selectedMethod
			ifNil: [ self selectedSelector: nil ]
			ifNotNil: [:met | self selectedSelector: met selector].
	self
		selectedClass: aNautilus selectedClass;
		selectedGroup: aNautilus selectedGroup;
		showHierarchy: aNautilus showHierarchy;
		showGroups: aNautilus showGroups;
		sortHierarchically: aNautilus sortHierarchically;
		showComment: aNautilus showComment;
		showInstance: aNautilus showInstance;
		showCategories: aNautilus showCategories.