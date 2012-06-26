private
buildPackageHierarchyFor: aPackage
	| classes |
	classes := aPackage classes collect: #theNonMetaClass.
	self browsedEnvironment isSystem
		ifFalse: [ classes := classes intersection: self browsedEnvironment classes ].

	^ self buildHierarchyForClasses: classes fromPackage: aPackage