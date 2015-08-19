visitTouchPointerDownEvent: anEvent
	| newFingerTracker |
	"Creating a new finger tracker"
	newFingerTracker := OSTouchFingerTracker for: anEvent.
	
	"Registering it in the right places"
	fingers at: anEvent fingerId put: newFingerTracker.
	(devicesFingers at: anEvent deviceId ifAbsentPut: OrderedCollection new) add: newFingerTracker.
	
	"Updating informations"
	fingerCount := fingerCount + 1 .
	lastUpdateTimestamp := anEvent timestamp.
	
	self updateGesturesActiveFingers.
	
	self sendEventToGestures: anEvent