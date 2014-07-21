explorerFor: anObject
	^ self window
		setLabel:  (anObject printStringLimitedTo: 32);
		yourself