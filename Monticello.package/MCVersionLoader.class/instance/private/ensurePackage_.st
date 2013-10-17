ensurePackage: mcPackage 
	RPackageOrganizer default 
		packageNamed: mcPackage name 
		ifAbsent: [ (RPackage named: mcPackage name) register ]