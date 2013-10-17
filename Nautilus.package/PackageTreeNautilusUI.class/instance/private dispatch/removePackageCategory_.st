removePackageCategory: package
	self basicRemoveClasses: package definedClasses.
	self browsedEnvironment packageOrganizer unregisterPackage: package		