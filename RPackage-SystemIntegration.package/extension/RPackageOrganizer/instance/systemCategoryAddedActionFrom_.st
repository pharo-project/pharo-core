systemCategoryAddedActionFrom: ann

	| rPackage packageSymbol |
	self flag: #fixMe. "a categoryName should always be a symbol, but for some reason it is keeping a string some times" 
	packageSymbol := ann categoryName asSymbol.
	(self includesPackageNamed: packageSymbol)
		ifFalse: [ 
			rPackage := self packageClass named: packageSymbol.
			self registerPackage: rPackage ]