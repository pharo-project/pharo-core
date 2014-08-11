applyTo: aNautilus

	aNautilus ui ifNotNil: [ :interface | interface resetAllListSelections].
	
	aNautilus
		selectedPackage: self selectedPackage;
		selectedClass: self selectedClass;
		selectedCategory: self selectedCategory.
		self selectedMethod
			ifNil: [ aNautilus selectedMethod: nil ]
			ifNotNil: [:sel | aNautilus selectedMethod: (self selectedClass methodDict at: sel ifAbsent: [ nil ])].

	aNautilus browsingHistory pauseDuring: [
	aNautilus
		selectedGroup: self selectedGroup;
		showPackages: self showPackages;
		showGroups: self showGroups;
		showHierarchy: self showHierarchy;
		showComment: self showComment;
		showInstance: self showInstance;
		showCategories: self showCategories.
	].
	aNautilus ui ifNotNil: [:interface || cl |
		cl := self selectedClass.
		interface showPackages: aNautilus showPackages.
		cl
			ifNil: [ interface showInstance: false ] 
			ifNotNil: [ 
				interface showInstance: cl isMeta not].
			
		interface
			selectedPackageWithoutChangingSelectionInternally: self selectedPackage;
			selectedClassWithoutChangingSelectionInternally: cl;
			selectedCategoryInternally: self selectedCategory.

		interface updatePackageGroupAndClassList.
			
		self selectedMethod
			ifNil: [ interface selectedMethod: nil ]
			ifNotNil: [:sel | interface selectedMethod: (cl compiledMethodAt: sel ifAbsent: [ nil ])].

		interface updateCategoryAndMethodList ].