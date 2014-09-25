visitKeyUpEvent: anEvent
	| keyEvent |
	keyEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: anEvent characterCode
		charCode: (anEvent characterCode ifNil: [0])
		hand:  morphicWorld activeHand
		stamp: Time millisecondClockValue.
	keyEvent scanCode: anEvent scanCode.
	^ keyEvent