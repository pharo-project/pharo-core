genForRBVariableNode
	node isGlobal ifTrue: [^node binding value asLiteralNode]. 
	^RBVariableNode named: node name.