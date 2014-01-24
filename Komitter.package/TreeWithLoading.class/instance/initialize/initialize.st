initialize

	super initialize.

	loading := true asReactiveVariable.
	
	loading whenChangedDo: [ :boolean | 
		boolean
			ifTrue: [ self showLoading ]
			ifFalse: [ self showTree ] ]