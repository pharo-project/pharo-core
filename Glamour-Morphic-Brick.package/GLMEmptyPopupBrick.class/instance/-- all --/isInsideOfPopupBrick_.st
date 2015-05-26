isInsideOfPopupBrick: anEvent
	^ (self isInsideOfTriggerBrick: anEvent) | (self isInsideOfContentBrick: anEvent)