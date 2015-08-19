visitTouchPointerUpEvent: anEvent
	super visitTouchPointerUpEvent: anEvent.
	touchExample endMove: anEvent fingerId at: anEvent position.