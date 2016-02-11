emitArgument: aBuilder type: aType context: aContext objectClass: objectClass instVarName: aName
	self 
		emitArgument: aBuilder 
		context: aContext 
		objectClass: objectClass 
		instVarName: aName.
	aType needsArityRolling ifTrue: [ 
		self 
			emitPointerArityRoll: aBuilder 
			context: aContext
			arity: aType pointerArity ]