classesNotDefinedInSubCategories

	"return all classes that are defined in a category matching exactly the name of this package. Rpackage has to re-order each class in its right package. See RPackageOrganizer>>importFromPackageInfo:"
	|subCategoriesClasses|
	subCategoriesClasses := OrderedCollection new.
	self systemCategories do: [:aSymbol |
		aSymbol = self packageName asSymbol
			ifFalse: [
				subCategoriesClasses addAll: (PackageInfo named: aSymbol asString) classes
				]
		].
	^ self classes difference: subCategoriesClasses