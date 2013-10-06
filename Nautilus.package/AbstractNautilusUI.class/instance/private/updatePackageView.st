updatePackageView
	| scroll |
	
	listElements := nil.
	scroll := list scrollValue y.
	self changed: #listElement:.
	list vScrollValue: scroll