removeMockPackagesFromOldOrganizer

	"the next line is a bit 'hacky'. It will remove the mock packages used by monticello test in packageInfo-Organizer. Those packages will now be subclasses of RPackage and should no longer be present in the packageInfo-organizer"
	|mockPackages|

	mockPackages := self default packages 
		select: [:info | (({'MCEmptyPackage'. 'MonticelloMocks'} includes: info packageName)) ].
	mockPackages 
		do: [:each | self default unregisterPackage: each ].
	self default packagesDictionary removeKey: #'Monticello-Mocks' ifAbsent: []