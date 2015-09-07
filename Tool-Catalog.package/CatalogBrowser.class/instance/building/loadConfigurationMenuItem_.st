loadConfigurationMenuItem: aList
	<contextMenu>
	aList selectionAct: [ :presenter | self onLoadFrom: presenter ] entitled: 'Load configuration (do not install project)'