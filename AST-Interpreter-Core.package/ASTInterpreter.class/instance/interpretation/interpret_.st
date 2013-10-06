interpret: anASTNode

	currentNode := anASTNode.
	
	^ anASTNode acceptVisitor: self.