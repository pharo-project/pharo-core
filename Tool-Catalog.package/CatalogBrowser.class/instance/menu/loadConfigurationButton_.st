loadConfigurationButton: aList
	<menu>
	aList
		act: [ :presenter | self onLoadFrom: presenter ]
		iconName: #configIcon
		entitled: 'Load configuration (do not install project)'