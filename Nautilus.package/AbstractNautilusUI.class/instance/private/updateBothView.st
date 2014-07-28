updateBothView

	self resetPackagesList.
	self resetClassesList.
	self changed: #getPackageItem:.
	self changed: #getClassItem: