menu
configurationMenu: aMenu
	selectedConfiguration 
			ifNil: [^aMenu add: 'Refresh' action: #refresh].
	^aMenu addList: #(
		('Install configuration (Stable version)'	loadStableFromSelectedConfiguration)
		('Load configuration (Do not install)'	loadSelectedConfiguration)
		-
		('Refresh'								refresh))