visitAssignmentNode: anAssignmentNode
	| var |
	self visitNode: anAssignmentNode value.
	var := (self lookupVariableForWrite: anAssignmentNode variable)
		ifNil: [self undeclaredVariable: anAssignmentNode variable].
	var markWrite.
	anAssignmentNode variable binding: var.
