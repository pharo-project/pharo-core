restrictedBrowsePackage

	self selectedPackages
		ifEmpty: [ ^ self ]
		ifNotEmpty: [ :packages |
			^ self restrictedBrowsePackages: packages ]