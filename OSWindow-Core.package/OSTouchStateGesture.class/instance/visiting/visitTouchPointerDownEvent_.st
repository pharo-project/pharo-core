visitTouchPointerDownEvent: anEvent
	super visitTouchPointerDownEvent: anEvent.
	self switchModeIfNecessary