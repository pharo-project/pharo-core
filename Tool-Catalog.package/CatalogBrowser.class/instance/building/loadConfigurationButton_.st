loadConfigurationButton: aList
	<menu>
	aList
		act: [ :presenter | self onLoadFrom: presenter ]
		icon: Smalltalk ui icons configIcon
		entitled: 'Load configuration (do not install project)'