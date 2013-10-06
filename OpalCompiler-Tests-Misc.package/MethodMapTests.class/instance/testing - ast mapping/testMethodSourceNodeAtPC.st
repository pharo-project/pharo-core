testMethodSourceNodeAtPC
	self assert: (((Object>>#halt) sourceNodeForPC:  22) isKindOf: RBMessageNode).
