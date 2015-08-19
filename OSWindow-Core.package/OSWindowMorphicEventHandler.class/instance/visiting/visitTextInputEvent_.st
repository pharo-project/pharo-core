visitTextInputEvent: anEvent
	| keyEvent char |
	anEvent text ifNil: [ ^ nil ].
	char := anEvent text first.
	char ifNil: [ ^ nil ].
	
	keyEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: char charCode
		charCode: char charCode
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	^ keyEvent