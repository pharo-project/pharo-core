emitArgument: aBuilder type: aType context: aContext 
	self emitArgument: aBuilder context: aContext.
	aType needsArityRolling ifTrue: [ 
		self 
			emitPointerArityRoll: aBuilder 
			context: aContext
			arity: aType pointerArity ]