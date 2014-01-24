initialize

	super initialize.

	state := ErrorState new asReactiveVariable.
	
	state whenChangedDo: [ :s | self rebuildForState: s ]