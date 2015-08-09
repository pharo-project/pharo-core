initialize
	super initialize.
	labelHolder := '' asValueHolder.
	enabledHolder := true asValueHolder.
	emphasis := #().
	labelHolder whenChangedDo: [ self changed: #getText ].