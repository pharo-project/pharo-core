visiting rb nodes
acceptAssignmentNode: anAssignmentNode 
	self visitNode: anAssignmentNode variable.
	self visitNode: anAssignmentNode value