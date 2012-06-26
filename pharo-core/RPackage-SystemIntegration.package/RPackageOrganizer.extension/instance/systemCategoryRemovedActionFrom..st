*RPackage-SystemIntegration
systemCategoryRemovedActionFrom: ann

	| rPackage categoryNameSymbol |
	categoryNameSymbol := ann categorySelector.
	"here we check that a corresponding MCPackage does not still exist. In this case we should keep the RPackage"
	self allManagers detect: [:each | self category: each packageName matches: categoryNameSymbol asString] ifNone: [
		rPackage := packages at: categoryNameSymbol ifAbsent: [^ self].
		"if no MCPackage exist, we unregister the package from the RPackageOrganizer"
		self basicUnregisterPackageNamed: categoryNameSymbol.	
		].
	
