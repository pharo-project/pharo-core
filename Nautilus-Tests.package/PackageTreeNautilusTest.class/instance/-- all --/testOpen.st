testOpen
	| allPackages filteredPackages |
	SharedPackageFilterPatternsHolder instance lastValue: nil.
	nautilus := PackageTreeNautilus open.
	allPackages := nautilus packages copy.  
	allPackages := nautilus ui packageWidget packagesList nodeList copy.
	nautilus packagePatternString: 'H'.
	filteredPackages := nautilus ui packageWidget packagesList nodeList copy.
	self assert: allPackages size > filteredPackages size.
