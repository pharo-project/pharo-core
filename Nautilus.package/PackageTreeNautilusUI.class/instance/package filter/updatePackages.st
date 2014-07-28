updatePackages

	| package |
	package := self selectedPackage.
	self packageWidget buildContents.
	self selectedPackage: package.
	self updatePackageViewAndMove