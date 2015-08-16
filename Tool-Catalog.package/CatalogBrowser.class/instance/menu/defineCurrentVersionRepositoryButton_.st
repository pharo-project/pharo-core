defineCurrentVersionRepositoryButton: aList

	<menu>
	aList
		act: [ :presenter | self defineCurrentVersionRepositoryInMCBrowser ]
		icon: Smalltalk ui icons komitterIcon
		entitled: 'Define current distribution catalog MC repository'