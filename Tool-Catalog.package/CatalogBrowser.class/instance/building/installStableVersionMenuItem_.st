installStableVersionMenuItem: aList
	<contextMenu>
	aList selectionAct: [ :presenter | self onInstallFrom: presenter ] entitled: 'Install stable version'