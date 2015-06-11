asPackageIfAbsent: aBlock
	^ RPackageOrganizer default packageNamed: self ifAbsent: aBlock