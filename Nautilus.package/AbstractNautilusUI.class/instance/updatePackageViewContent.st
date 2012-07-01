private
updatePackageViewContent

	| vScrollValue |
	vScrollValue := list scrollValue y.
	listElements := nil.
	self changed: #listElement:.
	list vScrollValue: vScrollValue