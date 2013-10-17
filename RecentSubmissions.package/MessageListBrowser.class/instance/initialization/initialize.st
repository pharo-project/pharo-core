initialize

	super initialize.
	wrapper := SourceMethodConverter new.
	
	self preference: self getPreferencesList first.
	self sortingSelector: self getDisplayList first.