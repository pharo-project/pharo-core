keyStroke: evt
	evt keyCharacter = Character cr
		ifTrue: [ self handleReturnKey ]
		ifFalse: [ super keyStroke: evt ]