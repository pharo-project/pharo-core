click: anEvent
	super click: anEvent.
	self windowBrick taskbarButtonClicked.
	^ true