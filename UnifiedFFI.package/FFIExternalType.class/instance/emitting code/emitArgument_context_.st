emitArgument: aBuilder context: aContext 
	self basicEmitArgument: aBuilder context: aContext.
	self needsArityRolling 
		ifTrue: [ self  emitPointerArityRoll: aBuilder context: aContext ]