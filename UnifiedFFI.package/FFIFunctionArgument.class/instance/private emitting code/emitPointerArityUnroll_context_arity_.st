emitPointerArityUnroll: aBuilder context: aContext arity: arity
	self emitArgument: aBuilder context: aContext.
	self addUnroll: aBuilder fromArity: arity