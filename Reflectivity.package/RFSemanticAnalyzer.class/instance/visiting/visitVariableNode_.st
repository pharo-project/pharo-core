visitVariableNode: aVariableNode
	super visitVariableNode: aVariableNode.
	aVariableNode binding ifNil: [ ^self ].
	aVariableNode isGlobal ifTrue: [  
		self analyseForLinks: aVariableNode binding variable ]