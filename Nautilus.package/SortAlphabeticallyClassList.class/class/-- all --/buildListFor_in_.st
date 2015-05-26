buildListFor: aPackageGroup in: anEnvironment
	^ aPackageGroup withClassesIn: anEnvironment createHierarchySorter: self 