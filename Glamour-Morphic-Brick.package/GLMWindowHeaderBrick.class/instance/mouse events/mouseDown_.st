mouseDown: evt
	super mouseDown: evt.
	
	startDragging := evt position.
	startDraggingOrigin := self window topLeft
	