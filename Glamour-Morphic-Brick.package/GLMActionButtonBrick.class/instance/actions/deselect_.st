deselect: anEvent
	super deselect: anEvent.
	
	unhoverAction ifNotNil: [ :a | a cull: self cull: anEvent ]