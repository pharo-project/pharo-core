visitTouchPointerUpEvent: anEvent
	super visitTouchPointerUpEvent: anEvent.
	self switchModeIfNecessary.