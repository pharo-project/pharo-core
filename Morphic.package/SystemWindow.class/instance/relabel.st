label
relabel
	| newLabel |
	newLabel := UIManager default 
		request: 'New title for this window' translated
		initialAnswer: labelString.
	newLabel isEmptyOrNil ifTrue: [^self].
	(model windowReqNewLabel: newLabel)
		ifTrue: [self setLabel: newLabel]