visitTouchPointerDownEvent: anEvent
	super visitTouchPointerDownEvent: anEvent.
	eventHandler fingerCount = self necessaryFingers
		ifTrue: [  process := self createWaitingProcess. 
			activeFinger := activeFingers first ]
		ifFalse: [ process terminate ]