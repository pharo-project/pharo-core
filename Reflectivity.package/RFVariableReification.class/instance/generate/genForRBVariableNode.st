genForRBVariableNode
	node isGlobal ifTrue: [ self error: #TODO ].
	node isTemp ifTrue: [ self error: 'Temps can not be reified yet' ]. 
	^RBMessageNode
		receiver: (RBMessageNode 
				receiver: (RBVariableNode named: #self)
				selector: #class)
		selector: #slotNamed:
		arguments: {node name asLiteralNode}
		