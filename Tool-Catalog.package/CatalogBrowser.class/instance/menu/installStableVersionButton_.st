installStableVersionButton: aList
	<menu>
	aList
		act: [ :presenter | self onInstallFrom: presenter ]
		iconName: #glamorousAccept
		entitled: 'Install stable version'