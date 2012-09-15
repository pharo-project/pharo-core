system compatibility
systemSubPackages

	"return all RPackages matching with systemCategories of this RPackage"
	|tmpPackages|
	tmpPackages := OrderedCollection new.
	self systemCategories do: [:aString |
		(aString asSymbol = self name) ifFalse: [
			|tmpPackage|
			"Maybe a RPackage matching the subcategory name does not yet exist in the organizer (Because packageInfo lazily register category from system). In this case, We should also lazily register a new RPackage with the right contents inside:"
			tmpPackage := self organizer packageNamed: aString asSymbol ifAbsent: [self organizer importFromPackageInfo: (PackageInfo named: aString)].
			tmpPackages add: (tmpPackage).
			].
		].
	^ tmpPackages