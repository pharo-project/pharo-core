genForRBVariableNode
	
	node isTemp ifTrue: [ ^self error: 'Temps can not be reified yet' ]. 
	^node binding variable asLiteralNode