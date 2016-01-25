emitReturnArgument: builder context: aContext
	self loader 
		emitPointerArityUnroll: builder
		type: self
		context: aContext
		objectClass: self objectClass
		instVarName: #thunk