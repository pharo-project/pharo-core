loadClassesListElements
	^ self showHierarchy
		ifTrue: [ self cachedHierarchy sortedElements ]
		ifFalse: [ self createClassHierarchyFor: self model selectedPackageGroup ]