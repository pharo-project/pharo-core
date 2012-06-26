setup
setUp
	super setUp.
	createdClasses := OrderedCollection new.
	createdPackages := OrderedCollection new.
	packageOrganizer := self packageOrganizerClass basicNew initialize.
	packageOrganizer debuggingName: 'For PackageOrganizerTest'.
	Author fullName ifNil: [Author fullName: 'RPackage'].