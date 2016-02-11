emitPointerArityUnroll: aBuilder type: aType context: aContext
	aType needsArityUnrolling ifFalse: [ ^ self ].
	self 
		emitPointerArityUnroll: aBuilder 
		context: aContext 
		arity: aType pointerArity