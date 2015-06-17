initialize
	super initialize.
	labelHolder := '' asValueHolder.
	enabledHolder := true asValueHolder.
	emphasis := TextEmphasis normal emphasisCode.
	labelHolder whenChangedDo: [ self changed: #getText ].