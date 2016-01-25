emitArgument: aBuilder type: aType context: aContext objectClass: objectClass instVarName: aName
	self 
		emitArgument: aBuilder 
		context: aContext 
		objectClass: objectClass 
		instVarName: aName.
	(self needsArityRolling: aType) ifTrue: [ 
		self 
			emitPointerArityRoll: aBuilder 
			context: aContext
			arity: aType pointerArity ]