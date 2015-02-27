handleListenEvent: anEvent
	
	(self triggerBrick boundsInWorld containsPoint: anEvent position) "|
		(self contentBrick boundsInWorld containsPoint: anEvent position)" ifFalse: [
			self close ]