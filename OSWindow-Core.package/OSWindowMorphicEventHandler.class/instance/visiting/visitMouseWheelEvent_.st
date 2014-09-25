visitMouseWheelEvent: anEvent
	| vertical |
	vertical := anEvent scrollVertical.
	vertical = 0 ifTrue: [ ^ nil ].
	
	^ MouseWheelEvent new 
		setType: #mouseWheel
		position: anEvent position
		direction: (vertical > 0 ifTrue: [#up] ifFalse: [#down])
		buttons: (self convertModifiers: anEvent modifiers)
		hand: morphicWorld activeHand
		stamp: Time millisecondClockValue