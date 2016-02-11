emitPointerArityUnroll: aBuilder type: aType context: aContext objectClass: objectClass instVarName: aName
	aType needsArityUnrolling ifFalse: [ ^ self ].
	self 
		emitPointerArityUnroll: aBuilder 
		context: aContext 
		objectClass: objectClass 
		instVarName: aName
		arity: aType pointerArity