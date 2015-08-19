visitTouchPointerDownEvent: anEvent
	super visitTouchPointerDownEvent: anEvent.
	touchExample beginMove: anEvent fingerId at: anEvent position