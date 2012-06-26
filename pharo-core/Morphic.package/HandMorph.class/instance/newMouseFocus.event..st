focus handling
newMouseFocus: aMorph event: event 
	aMorph isNil 
		ifFalse: [targetOffset := event cursorPoint - aMorph position].
	^self newMouseFocus: aMorph