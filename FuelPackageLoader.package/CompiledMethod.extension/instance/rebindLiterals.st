*FuelPackageLoader
rebindLiterals 

	1 to: self numLiterals
		do: [ :index | self rebindLiteralAt: index ]