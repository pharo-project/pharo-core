visitTouchPointerUpEvent: anEvent
	(devicesFingers at: anEvent deviceId) remove: (fingers at: anEvent fingerId).
	fingers removeKey: anEvent fingerId.
	
	fingerCount := fingerCount - 1 .
	lastUpdateTimestamp := anEvent timestamp.
	
	self updateGesturesActiveFingers.
	
	self sendEventToGestures: anEvent