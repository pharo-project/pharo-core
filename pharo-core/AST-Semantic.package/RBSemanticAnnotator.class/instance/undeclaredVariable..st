private
undeclaredVariable: aNode
	^ aNode lexicalScope add: (RBUndeclaredVariableNotification node: aNode)