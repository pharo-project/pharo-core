defineCurrentVersionRepositoryButton: aList

	<menu>
	aList
		act: [ :presenter | self defineCurrentVersionRepositoryInMCBrowser ]
		iconName: #komitterIcon
		entitled: 'Define current distribution catalog MC repository'