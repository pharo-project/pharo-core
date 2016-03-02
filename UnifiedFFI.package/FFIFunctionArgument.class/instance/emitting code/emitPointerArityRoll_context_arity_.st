emitPointerArityRoll: aBuilder context: aContext arity: arity
	"I take into account complex arities (like **, ***). 
	 I'm called right after argument marshaling which means it is already in top of the stack"
	^ self 
		emitPointerArityRoll: aBuilder 
		context: aContext 
		arity: arity
		selector: #rollToArity: