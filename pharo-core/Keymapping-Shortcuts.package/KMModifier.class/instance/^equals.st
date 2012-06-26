comparing
= aShortcut
	super = aShortcut
		ifFalse: [ ^ false ]. 
	aShortcut identifier = identifier 
		ifFalse: [ ^ false ].
	^ true