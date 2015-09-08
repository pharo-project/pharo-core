defineAllRepositoriesInMCBrowserButton: aList

	<menu>
	aList
		act: [ :presenter | self defineAllRepositoriesInMCBrowser ]
		icon: Smalltalk ui icons monticelloPackageIcon
		entitled: 'Define all distribution catalog MC repositories'