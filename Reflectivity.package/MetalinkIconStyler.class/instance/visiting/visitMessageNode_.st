visitMessageNode: aMessageNode 
	self addMetalinkStyle: aMessageNode.
	super visitMessageNode: aMessageNode.