visitAssignmentNode: anAssignmentNode 

	super visitAssignmentNode: anAssignmentNode .
	methodBuilder popTop. 