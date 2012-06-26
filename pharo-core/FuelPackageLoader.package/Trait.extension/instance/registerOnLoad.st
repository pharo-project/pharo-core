*FuelPackageLoader
registerOnLoad

	Smalltalk globals at: self name put: self.
	Smalltalk globals organization classify: self name under: self basicCategory.