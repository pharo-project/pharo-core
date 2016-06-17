change
	
	alreadyExecuted ifFalse: [
		refactoring primitiveExecute.
		alreadyExecuted := true ].
	
	^ refactoring changes