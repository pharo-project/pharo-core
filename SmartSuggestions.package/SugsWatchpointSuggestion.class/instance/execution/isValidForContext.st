isValidForContext
	context ifNil: [ ^false ].
	context hasUnacceptedEdits ifTrue: [ ^false ].
	^RFValueReification entities anySatisfy: 
		[:validReification|   context selectedNode class inheritsFrom: validReification]