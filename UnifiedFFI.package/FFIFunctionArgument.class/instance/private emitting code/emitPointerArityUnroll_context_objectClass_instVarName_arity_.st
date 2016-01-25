emitPointerArityUnroll: aBuilder context: aContext objectClass: objectClass instVarName: aName arity: arity
	self emitArgument: aBuilder context: aContext objectClass: objectClass instVarName: aName.
	self addUnroll: aBuilder fromArity: arity