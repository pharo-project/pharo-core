emitPointerArityUnroll: aBuilder type: aType context: aContext objectClass: objectClass instVarName: aName
	(self needsArityRolling: aType) ifFalse: [ ^ self ].
	 
	self 
		emitPointerArityUnroll: aBuilder 
		context: aContext 
		objectClass: objectClass 
		instVarName: aName
		arity: aType pointerArity