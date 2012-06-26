accessing
initialize

	super initialize.
	readOnly := false.
	blocks ifNil: [ blocks := OrderedCollection with: [{}] ]