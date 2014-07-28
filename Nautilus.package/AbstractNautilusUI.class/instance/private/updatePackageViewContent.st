updatePackageViewContent

	| vScrollValue |
	vScrollValue := self packageWidget scrollValue y.
	self resetPackagesList.
	self changed: #getPackageItem:.
	self packageWidget vScrollValue: vScrollValue