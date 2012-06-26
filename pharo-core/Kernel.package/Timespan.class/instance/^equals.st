ansi protocol
= comparand
	^ self class = comparand class 
		and: [ self start = comparand start 
				and: [ self duration = comparand duration ]]
