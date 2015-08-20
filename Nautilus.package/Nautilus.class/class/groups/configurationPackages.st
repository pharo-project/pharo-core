configurationPackages
	^ (RPackageOrganizer default packages
		select: [ :package | package name beginsWith: 'ConfigurationOf' ]) asOrderedCollection