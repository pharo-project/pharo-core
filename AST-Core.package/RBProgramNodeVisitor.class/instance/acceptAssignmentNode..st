visitor-double dispatching
acceptAssignmentNode: anAssignmentNode 
	self visitNode: anAssignmentNode variable.
	self visitNode: anAssignmentNode value