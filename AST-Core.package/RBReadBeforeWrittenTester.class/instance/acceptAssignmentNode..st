visitor-double dispatching
acceptAssignmentNode: anAssignmentNode 
	self visitNode: anAssignmentNode value.
	self variableWritten: anAssignmentNode