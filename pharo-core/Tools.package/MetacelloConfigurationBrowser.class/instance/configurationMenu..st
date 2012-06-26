menu
configurationMenu: aMenu
	selectedConfiguration isNil ifTrue: [^aMenu labels: 'Refresh' lines: #() selections: #(refresh)].
	^aMenu labels:
		'Install configuration (Stable version)
		Load configuration (Do not install)
		Refresh' 
		lines: #(2)
		selections: #(
			loadStableFromSelectedConfiguration 
			loadSelectedConfiguration 
			refresh)