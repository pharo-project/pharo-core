visitTouchPointerMoveEvent: anEvent
	(fingers at: anEvent fingerId)
		updateWithEvent: anEvent.
	lastUpdateTimestamp := anEvent timestamp.
	
	self sendEventToGestures: anEvent