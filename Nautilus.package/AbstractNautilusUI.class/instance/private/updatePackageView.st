updatePackageView
	| scroll |
	
	scroll := self packageWidget scrollValue y.
	self changed: #getPackageItem:.
	self packageWidget vScrollValue: scroll