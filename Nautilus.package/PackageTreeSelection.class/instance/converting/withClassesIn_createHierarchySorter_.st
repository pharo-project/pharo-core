withClassesIn: anEnvironment createHierarchySorter: aHierarchyClass 
	| classes defined extensions |
	classes := self definedClasses collect: #theNonMetaClass.
	anEnvironment isSystem
		ifFalse: [ classes := classes intersection: anEnvironment classes ].

	defined := aHierarchyClass buildHierarchyForClasses: classes fromPackage: self.
	
	classes := self extensionClasses collect: #theNonMetaClass.
	anEnvironment isSystem
		ifFalse: [ classes := classes intersection: anEnvironment classes ].
	
	extensions := aHierarchyClass buildHierarchyForClasses: classes asSet fromPackage: self.

	^ defined, extensions