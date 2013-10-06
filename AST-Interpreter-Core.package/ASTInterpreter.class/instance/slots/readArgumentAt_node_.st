readArgumentAt: index node: aVariableNode
	| variableContext |
	
	variableContext := self context.
	
	[ variableContext code = aVariableNode binding definingScope node ] 
		whileFalse: [
				variableContext := variableContext homeContext.
				self assert: variableContext isNil not ].
			
	^ variableContext arguments at: index