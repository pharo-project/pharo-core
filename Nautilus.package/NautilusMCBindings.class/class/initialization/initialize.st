initialize

	super initialize.
	
	RPackageOrganizer default packages do: [:p | self default mcPackageFor: p ]