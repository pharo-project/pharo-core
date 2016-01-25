emitPointerArityUnroll: aBuilder type: aType context: aContext
	(self needsArityRolling: aType) ifFalse: [ ^ self ].
	 
	self 
		emitPointerArityUnroll: aBuilder 
		context: aContext 
		arity: aType pointerArity