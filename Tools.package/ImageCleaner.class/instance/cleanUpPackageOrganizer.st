cleaning
cleanUpPackageOrganizer

	PackageOrganizer default packages
		do: [ :each | 
			each methods isEmpty
				ifTrue: [ PackageOrganizer default unregisterPackage: each ] ]
		displayingProgress: 'Cleaning Packages'