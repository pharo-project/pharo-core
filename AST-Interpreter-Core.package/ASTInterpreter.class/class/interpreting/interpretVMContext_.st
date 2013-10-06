interpretVMContext: aContext
	| interpreter |
	self flag: #TODO. "not implemented yet"
	interpreter := self new.
	interpreter resetContext: aContext asASTInterpreterContext.
	^interpreter interpret: aContext sourceNode.
	