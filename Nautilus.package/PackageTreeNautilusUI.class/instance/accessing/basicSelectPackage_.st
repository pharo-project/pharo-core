basicSelectPackage: aPackage
	| selection |
			
	selection := aPackage asNautilusSelection.
	self giveFocusTo: list.
	self selectedPackageWithoutChangingSelection: selection.
	self listSelectItem: selection.