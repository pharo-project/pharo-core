*FuelPackageLoader
registerOnLoad

	superclass addSubclass: self. "Note that aClass could already be between its superclass subclasses, #addSubclass: is prepared for that case."
	Smalltalk globals at: self name put: self.
	Smalltalk globals organization classify: self name under: self basicCategory.