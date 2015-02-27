select: anEvent
	super select: anEvent.
	
	hoverAction ifNotNil: [ :a | a cull: self cull: anEvent ]