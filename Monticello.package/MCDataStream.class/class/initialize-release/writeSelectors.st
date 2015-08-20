writeSelectors
	WriteSelectors ifNil: [ self initializeTypeMap ].
	^ WriteSelectors