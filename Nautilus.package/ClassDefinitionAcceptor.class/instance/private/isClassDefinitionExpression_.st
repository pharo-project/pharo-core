isClassDefinitionExpression: aSource
	[ RBParser parseExpression: aSource ]
		on: Error
		do: [ ^ false ].
	^ true