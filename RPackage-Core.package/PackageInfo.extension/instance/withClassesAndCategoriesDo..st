*RPackage-Core
withClassesAndCategoriesDo: aBlock
	self systemCategories do: [:aSymbol |
		(PackageInfo named: aSymbol asString) classes do: [ :class |
			aBlock value: class value: aSymbol.
		].
	].