genForRBVariableNode
	node isGlobal ifTrue: [^node binding value asLiteralNode]. 
	^node copy.