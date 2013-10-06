testBlockTemporaries
	|blockCtx|
	
	[ :x :y | x+y. blockCtx := thisContext copy asASTInterpreterContext ] value: 5 value: 7.

	self assert: (blockCtx temporaries at: 'x') = 5.
	self assert: (blockCtx temporaries at: 'y') = 7.
	
	