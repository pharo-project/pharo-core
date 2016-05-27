tearDown
	super tearDown.
	
	store fileReference ensureDeleteAllChildren.
	otherStore fileReference ensureDeleteAllChildren.