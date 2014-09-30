appendVariableBinding: anAssociationList

	anAssociationList ifNotNil: [
		anAssociationList do: [ :anAssociation | 
			self variableBindings at: anAssociation key put: anAssociation value ] ]