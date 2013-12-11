updatePackages

	| package |
	package := self selectedPackage.
	list buildContents.
	self selectedPackage: package.
	self updatePackageViewAndMove