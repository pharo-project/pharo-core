emitStore: aMethodBuilder
	aMethodBuilder
		pushLiteral: self;
		send: #writeToGlobal:
		