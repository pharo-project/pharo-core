transforming
insertTemporary
	| node statementNode |
	node := self parseTree whichNodeIsContainedBy: sourceInterval.
	(node notNil and: [node isValue]) 
		ifFalse: [self refactoringError: 'Cannot assign to non-value nodes'].
	statementNode := node statementNode.
	node replaceWith: (RBVariableNode named: newVariableName).
	(statementNode parent)
		addNode: (self constructAssignmentFrom: node)
			before: (node == statementNode 
					ifTrue: [RBVariableNode named: newVariableName]
					ifFalse: [statementNode]);
		addTemporaryNamed: newVariableName