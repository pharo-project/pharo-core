comparing
= aShortcut
	super = aShortcut
		ifFalse: [ ^ false ]. 
	aShortcut modifier = modifier 
		ifFalse: [ ^ false ].
	aShortcut character = character
		ifFalse: [ ^ false ].
	^ true