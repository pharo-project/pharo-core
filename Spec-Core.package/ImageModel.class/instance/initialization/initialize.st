initialize

	super initialize.

	imageHolder := nil asValueHolder.
	enabledHolder := true asValueHolder.
	imageHolder whenChangedDo: [ self changed: #getImage ].