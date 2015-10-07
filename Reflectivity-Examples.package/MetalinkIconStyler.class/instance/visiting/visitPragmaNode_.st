visitPragmaNode: aPragmaNode 
	self addMetalinkStyle: aPragmaNode.
	super visitPragmaNode: aPragmaNode.