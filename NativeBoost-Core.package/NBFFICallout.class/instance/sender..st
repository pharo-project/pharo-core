accessing
sender: aSenderContext
	| nArgs |
	self requestor: aSenderContext method methodClass.
	nArgs := aSenderContext method numArgs.
	methodArgs := aSenderContext method methodNode tempNames first: nArgs.
	
	self assert: (methodArgs size = nArgs).
