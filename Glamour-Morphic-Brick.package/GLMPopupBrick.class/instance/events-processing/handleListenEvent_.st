handleListenEvent: anEvent
	(self isInsideOfTriggerBrick: anEvent) ifFalse: [ self close ]