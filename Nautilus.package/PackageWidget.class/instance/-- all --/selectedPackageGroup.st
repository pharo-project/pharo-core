selectedPackageGroup
	^ self model showGroups
		ifTrue: [ self selectedGroup ]
		ifFalse: [ self selectedPackage ]