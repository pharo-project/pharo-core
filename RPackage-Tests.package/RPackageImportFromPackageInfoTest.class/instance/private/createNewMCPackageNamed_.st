createNewMCPackageNamed: aSymbol

	PackageInfo registerPackageName: aSymbol.
	MCWorkingCopy forPackage: (MCPackage new name: aSymbol)