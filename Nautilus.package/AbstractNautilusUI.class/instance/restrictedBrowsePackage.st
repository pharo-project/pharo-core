menus behavior
restrictedBrowsePackage

	self selectedPackages
		ifEmpty: [ ^ self ]
		ifNotEmpty: [:packages || newEnvironment |
			newEnvironment := self browsedEnvironment forPackages: packages.
			 self model class openOnPackage: self selectedPackage inEnvironment: newEnvironment ]