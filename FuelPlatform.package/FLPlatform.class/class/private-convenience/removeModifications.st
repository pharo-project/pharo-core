removeModifications
	(PackageInfo named: self extensionProtocolName) extensionMethods do: [ :methodReference |
		methodReference actualClass removeSelector: methodReference selector ].
	(PackageInfo named: self hacksCategoryName) in: [ :hacks |
		hacks classes do: [ :classOrTrait |
			classOrTrait removeFromSystem ].
		PackageOrganizer default  unregisterPackage: hacks ].
	SystemOrganizer default removeCategory: self hacksCategoryName