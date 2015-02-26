initialize
	super initialize.
	imageHolder := nil asValueHolder.
	action := [] asValueHolder. 
	imageHolder whenChangedDo: [ self changed: #getImage ].