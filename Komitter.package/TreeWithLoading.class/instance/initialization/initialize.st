initialize

	super initialize.

	loading := true asValueHolder.
	
	loading whenChangedDo: [ :boolean | 
		boolean
			ifTrue: [ self showLoading ]
			ifFalse: [ self showTree ] ]