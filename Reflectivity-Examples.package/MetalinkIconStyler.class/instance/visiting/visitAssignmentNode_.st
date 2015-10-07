visitAssignmentNode: anAssignmentNode 
	self addMetalinkStyle: anAssignmentNode.
	super visitAssignmentNode: anAssignmentNode.