packageSearchUpdate: aPatternString
	packagePattern := self createPackagePattern: aPatternString.
	SharedPackageFilterPatternsHolder instance lastValue: aPatternString.
	self updatePackages