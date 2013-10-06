testLazyInitialization

	self assert: (self interpret: '
		ASTInterpreterTest new lazyInitialization
		') equals: 5.
	