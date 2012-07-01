visitor-double dispatching
acceptAssignmentNode: anAssignmentNode 
	self indent: 2
		while: 
			[self visitNode: anAssignmentNode variable.
			codeStream space; nextPutAll: anAssignmentNode assignmentOperator; space.
			self visitNode: anAssignmentNode value]