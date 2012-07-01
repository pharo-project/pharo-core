*RPackage-SystemIntegration
systemCategoryAddedActionFrom: ann

	| rPackage packageSymbol |
	packageSymbol := ann item asSymbol.
	(self includesPackageNamed: packageSymbol)
		ifFalse: [ 
			rPackage := self packageClass named: packageSymbol.
			self registerPackage: rPackage ]