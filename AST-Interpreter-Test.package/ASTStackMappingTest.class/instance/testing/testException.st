testException
	|exceptionBlock blockCtx astBlockCtx|
	
	exceptionBlock := [ Transcript show: 'banana' ].
	
	[ blockCtx :=  thisContext copy.
	astBlockCtx := blockCtx asASTInterpreterContext. 
	Error signal] on: Error do: exceptionBlock.
	
	self assert: astBlockCtx exceptionHandler exception equals: Error.
	self assert: astBlockCtx exceptionHandler block equals:  exceptionBlock.