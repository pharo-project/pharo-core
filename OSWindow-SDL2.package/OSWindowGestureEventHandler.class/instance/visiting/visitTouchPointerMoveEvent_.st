visitTouchPointerMoveEvent: anEvent
	super visitTouchPointerMoveEvent: anEvent.
	touchExample move: anEvent fingerId at: anEvent position.