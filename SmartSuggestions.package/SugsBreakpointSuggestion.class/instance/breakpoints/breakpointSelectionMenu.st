breakpointSelectionMenu
	^ UIManager default
		chooseFrom: #('break once' 'break always' 'break on condition')
		values:
			{#once.
			#always.
			#when:} 