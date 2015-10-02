visitParseErrorNode: anErrorNode 
	self addMetalinkStyle: anErrorNode.
	super visitParseErrorNode: anErrorNode.