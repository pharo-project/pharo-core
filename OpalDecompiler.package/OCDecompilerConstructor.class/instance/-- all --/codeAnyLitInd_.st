codeAnyLitInd: anAssociation 
	
	^ (RBVariableNode named: anAssociation key)
		binding: anAssociation;
		yourself