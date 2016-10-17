installAndCreateGroupButton: aList
	<menu>
	aList
		act: [ :presenter | self onInstallAndCreateGroupFrom: presenter ]
		iconName: #publishIcon
		entitled: 'Install stable version and create group'