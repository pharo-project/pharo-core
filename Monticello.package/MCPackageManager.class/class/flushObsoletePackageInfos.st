cleaning
flushObsoletePackageInfos
	"Flush any and all PackageInfos that are not associated with an MCPackageManager."

	| pkgNames |
	pkgNames := self allManagers collect: [:wcs| wcs packageName] as: Set.
	PackageOrganizer default flushObsoletePackages: [:p|
		p class isObsolete or:[(pkgNames includes: p packageName) not].
	].