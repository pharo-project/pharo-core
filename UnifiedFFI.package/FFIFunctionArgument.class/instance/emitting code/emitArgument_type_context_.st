emitArgument: aBuilder type: aType context: aContext 
	self emitArgument: aBuilder context: aContext.
	(self needsArityRolling: aType) ifTrue: [ 
		self 
			emitPointerArityRoll: aBuilder 
			context: aContext
			arity: aType pointerArity ]