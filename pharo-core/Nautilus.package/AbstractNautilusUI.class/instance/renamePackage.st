menus behavior
renamePackage

	self renamePackages: self selectedPackages.
	cachedHierarchy := self buildPackageHierarchyFor: self selectedPackage.
	self updatePackageView.
	