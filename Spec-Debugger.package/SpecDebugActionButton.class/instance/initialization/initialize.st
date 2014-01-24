initialize

	super initialize.

	debugActionHolder := nil asReactiveVariable.
	debugActionHolder whenChangedDo: [ self update ]
	
	
	