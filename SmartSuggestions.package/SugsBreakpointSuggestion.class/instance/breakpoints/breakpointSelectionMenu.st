breakpointSelectionMenu
	^ UIManager default
		chooseFrom: #('halt once' 'halt always' 'halt on condition')
		values:
			{#once.
			#always.
			#when:} 