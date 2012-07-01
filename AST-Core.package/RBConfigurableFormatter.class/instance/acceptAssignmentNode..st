visitor-double dispatching
acceptAssignmentNode: anAssignmentNode 
	self visitNode: anAssignmentNode variable.
	codeStream space; nextPutAll: anAssignmentNode assignmentOperator; space.
	self visitNode: anAssignmentNode value