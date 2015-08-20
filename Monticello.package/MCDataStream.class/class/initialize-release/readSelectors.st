readSelectors
	ReadSelectors ifNil: [ self initializeTypeMap ].
	^ReadSelectors 