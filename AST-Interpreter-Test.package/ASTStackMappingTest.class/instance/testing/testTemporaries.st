testTemporaries
	| a b c ctx blockCtx|
	a := 1.
	b := True .
	c := 'guineaPig'.
	
	ctx := thisContext copy asASTInterpreterContext.
	
	self assert: (ctx temporaries at: 'a') = 1.
	self assert: (ctx temporaries at: 'b') = True.
	self assert: (ctx temporaries at: 'c') = 'guineaPig'.
	
	