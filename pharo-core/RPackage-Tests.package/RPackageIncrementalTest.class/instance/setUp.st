setup
setUp
	super setUp.
	createdClasses := OrderedCollection new.
	createdPackages := OrderedCollection new.
	createdCategories := Set new.
	Author fullName ifNil: [Author fullName: 'RPackage'].