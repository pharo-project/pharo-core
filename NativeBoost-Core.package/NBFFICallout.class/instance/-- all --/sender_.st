sender: aSenderContext
	| nArgs |
	self requestor: aSenderContext method methodClass.
	nArgs := aSenderContext method numArgs.
	methodArgs := aSenderContext method nbArgumentNames.
	self receiver: aSenderContext receiver.
	self assert: (methodArgs size = nArgs).
