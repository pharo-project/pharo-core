isValidForContext
	context ifNil: [ ^false ].
	context hasUnacceptedEdits ifTrue: [ ^false ].
	^RFValueReification entities anySatisfy: 
		[:validReification| validReification = context selectedNode class ]