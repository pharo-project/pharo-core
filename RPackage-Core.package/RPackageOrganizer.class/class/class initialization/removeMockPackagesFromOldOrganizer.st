removeMockPackagesFromOldOrganizer

	"the next line is a bit 'hacky'. It will remove the mock packages used by monticello test in packageInfo-Organizer. Those packages will now be subclasses of RPackage and should no longer be present in the packageInfo-organizer"
	|mockPackages|
	"mockPackages := PackageOrganizer default packages select: [:info | ((((info packageName = 'MCDirtyPackage') or: [info packageName = 'MCEmptyPackage']) or: [info packageName = 'MonticelloMocks']) 	or: [info isKindOf:  MCDirtyPackageInfo])]."
	mockPackages := self default packages select: [:info | (({'MCDirtyPackageInfo'. 'MCEmptyPackage'. 'MonticelloMocks'} includes: info packageName) 	or: [info isKindOf:  MCDirtyPackageInfo])].
	mockPackages do: [:each |
		self default unregisterPackage: each.
	].
	self default packagesDictionary removeKey: #'Monticello-Mocks' ifAbsent: [].