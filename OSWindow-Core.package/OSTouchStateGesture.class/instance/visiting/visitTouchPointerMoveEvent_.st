visitTouchPointerMoveEvent: anEvent
	super visitTouchPointerMoveEvent: anEvent.
	self activateModeIfNecessary .
	(modeActivated and: [ self checkConditions ])
		ifTrue: [  self sendToEventHandler: self createEventDuringMove ]