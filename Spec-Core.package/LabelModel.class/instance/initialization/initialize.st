initialize
	super initialize.
	textHolder := '' asValueHolder.
	enabledHolder := true asValueHolder.
	textHolder whenChangedDo: [ self changed: #getText ].