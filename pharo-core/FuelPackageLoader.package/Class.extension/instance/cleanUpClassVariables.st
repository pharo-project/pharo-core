*FuelPackageLoader
cleanUpClassVariables

	self classPool keys do: [ :key | classPool at: key put: nil ]