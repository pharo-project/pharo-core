visitKeyDownEvent: anEvent
	| keyEvent keyEvent2 |

	keyEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: anEvent characterCode
		charCode: anEvent characterCode
		hand:  morphicWorld activeHand
		stamp: Time millisecondClockValue.
	keyEvent scanCode: anEvent scanCode.
	
	self dispatchMorphicEvent: keyEvent.
	anEvent character ifNil: [ ^ nil ].
	
	keyEvent2 := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: anEvent characterCode
		charCode: anEvent characterCode
		hand:  morphicWorld activeHand
		stamp: Time millisecondClockValue.
	keyEvent2 scanCode: anEvent scanCode.

	^ keyEvent2