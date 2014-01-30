accessing
sender: aSenderContext
	| nArgs |
	self requestor: aSenderContext method methodClass.
	nArgs := aSenderContext method numArgs.
	methodArgs := aSenderContext method nbArgumentNames.
	self assert: (methodArgs size = nArgs).
