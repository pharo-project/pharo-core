buildPackageHierarchyFor: aPackage
	| classes defined extensions |
	classes := aPackage definedClasses collect: #theNonMetaClass.
	self browsedEnvironment isSystem
		ifFalse: [ classes := classes intersection: self browsedEnvironment classes ].

	defined := SortHierarchically buildHierarchyForClasses: classes fromPackage: aPackage.
	
	classes := aPackage extensionClasses collect: #theNonMetaClass.
	self browsedEnvironment isSystem
		ifFalse: [ classes := classes intersection: self browsedEnvironment classes ].
	
	extensions := SortHierarchically buildHierarchyForClasses: classes asSet fromPackage: aPackage.

	^ defined, extensions