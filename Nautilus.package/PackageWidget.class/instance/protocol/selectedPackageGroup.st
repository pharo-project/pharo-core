selectedPackageGroup
	^ self selectedPackage ifNil: [ self selectedGroup ]