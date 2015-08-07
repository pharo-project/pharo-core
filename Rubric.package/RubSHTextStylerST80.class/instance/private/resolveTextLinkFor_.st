resolveTextLinkFor: aVariableNode

	aVariableNode binding isGlobalVariable
		ifTrue: [ ^ RubTextClassLink className: aVariableNode name ].
		
	^ RubTextVariableLink variableName: aVariableNode name