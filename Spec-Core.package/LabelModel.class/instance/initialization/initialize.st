initialize

	super initialize.

	textHolder := '' asReactiveVariable.
	enabledHolder := true asReactiveVariable.
	textHolder whenChangedDo: [ self changed: #getText ].