accessing
dependentPackages
	^(dependencies collect: [ :c | PackageOrganizer default packageOfClass: c ]) asSet