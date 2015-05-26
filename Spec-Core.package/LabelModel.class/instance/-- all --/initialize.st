initialize
	super initialize.
	labelHolder := '' asValueHolder.
	enabledHolder := true asValueHolder.
	labelHolder whenChangedDo: [ self changed: #getText ].