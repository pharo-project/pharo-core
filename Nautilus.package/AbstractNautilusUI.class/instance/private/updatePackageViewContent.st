updatePackageViewContent

	| vScrollValue |
	vScrollValue := self packageWidget scrollValue y.
	self resetPackageGroupsList.
	self changed: #getPackageItem:.
	self packageWidget vScrollValue: vScrollValue