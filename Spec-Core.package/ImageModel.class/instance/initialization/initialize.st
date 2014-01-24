initialize

	super initialize.

	imageHolder := nil asReactiveVariable.
	action := [] asReactiveVariable. 
	
	imageHolder whenChangedDo: [ self changed: #getImage ].