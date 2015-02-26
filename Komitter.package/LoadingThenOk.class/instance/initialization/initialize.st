initialize

	super initialize.

	state := ErrorState new asValueHolder.
	
	state whenChangedDo: [ :s | self rebuildForState: s ]