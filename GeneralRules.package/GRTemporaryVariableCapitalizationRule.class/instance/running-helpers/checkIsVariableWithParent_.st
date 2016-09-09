checkIsVariableWithParent: aNode

	^ aNode isVariable and: [
	  aNode parent isNotNil ]