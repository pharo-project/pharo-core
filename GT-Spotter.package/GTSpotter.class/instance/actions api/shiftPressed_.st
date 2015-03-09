shiftPressed: aBoolean

	self isShiftPressed = aBoolean ifTrue: [ ^ self ].
	
	isShiftPressed := aBoolean.
	
	SmalltalkImage current vm interpreterSourceDate < 2015 asYear 
		ifTrue: [ ^ isShiftPressed := false ].

	self isShiftPressed
		ifTrue: [ self notifyRevealHints ]
		ifFalse: [ self notifyHideHints ]

	