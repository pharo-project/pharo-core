handleMouseOver: anEvent
	super handleMouseOver: anEvent.
		
	isResizing | (self isMouseEventInsideLeftResizingZone: anEvent) | (self isMouseEventInsideRightResizingZone: anEvent)
	ifTrue: [
		self setCursorToResizing: anEvent.
	]
	ifFalse: [
		self setCursorToNormal: anEvent.
	].