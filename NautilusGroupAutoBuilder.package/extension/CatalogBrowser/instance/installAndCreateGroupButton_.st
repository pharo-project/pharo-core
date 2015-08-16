installAndCreateGroupButton: aList
	<menu>
	aList
		act: [ :presenter | self onInstallAndCreateGroupFrom: presenter ]
		icon: Smalltalk ui icons publishIcon
		entitled: 'Install stable version and create group'