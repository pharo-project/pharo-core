installStableVersionButton: aList
	<menu>
	aList
		act: [ :presenter | self onInstallFrom: presenter ]
		icon: Smalltalk ui icons glamorousAccept
		entitled: 'Install stable version'