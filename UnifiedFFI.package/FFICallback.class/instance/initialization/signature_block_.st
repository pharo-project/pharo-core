signature: signature "<String>" block: aBlock "<BlockClosure>"
	functionSpec := self newParser parseAnonymousFunction: signature.
	numEvaluatorArgs := functionSpec arguments size.
	block := aBlock.
	thunk := FFICallbackThunk newCCall.
	self addToThunkTable