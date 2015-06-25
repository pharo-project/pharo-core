genForSlot
	^RBMessageNode
		receiver: (RBMessageNode 
				receiver: (RBVariableNode named: #self)
				selector: #class)
		selector: #slotNamed:
		arguments: {node name asLiteralNode}
		