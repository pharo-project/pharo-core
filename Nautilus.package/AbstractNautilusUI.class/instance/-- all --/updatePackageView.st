updatePackageView
	| scroll |
	
	self resetPackageGroupsList.
	scroll := self packageWidget scrollValue y.
	self changed: #getPackageItem:.
	self packageWidget vScrollValue: scroll