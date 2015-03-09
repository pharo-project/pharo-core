handleListenEvent: anEvent
	(self isInsideOfPopupBrick: anEvent) ifFalse: [ self close ]