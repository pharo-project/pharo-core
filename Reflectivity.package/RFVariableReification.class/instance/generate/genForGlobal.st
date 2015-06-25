genForGlobal
	^RBMessageNode
		receiver: (RBMessageNode 
				receiver: (RBVariableNode named: #self)
				selector: #class)
		selector: #bindingOf:
		arguments: {node name asLiteralNode}
		