installStableVersionMenuItem: aList
	<contextMenu>
	aList 
		selectionAct: [ :presenter | self onInstallFrom: presenter ] 
		icon: Smalltalk ui icons glamorousAccept
		entitled: 'Install stable version'