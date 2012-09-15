*RPackage-SystemIntegration
systemCategoryAddedActionFrom: ann

	| rPackage packageSymbol |
	packageSymbol := ann categoryName asSymbol.
	(self includesPackageNamed: packageSymbol)
		ifFalse: [ 
			rPackage := self packageClass named: packageSymbol.
			self registerPackage: rPackage ]