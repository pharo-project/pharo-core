updatePackageGroupAndClassList

	self resetPackageGroupsList.
	self resetClassesList.
	self changed: #getPackageItem:.
	self changed: #getClassItem: