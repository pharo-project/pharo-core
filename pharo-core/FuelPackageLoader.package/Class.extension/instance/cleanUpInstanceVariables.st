*FuelPackageLoader
cleanUpInstanceVariables

	Class instSize + 1 to: self class instSize do:
		[:offset | self instVarAt: offset put: nil].
