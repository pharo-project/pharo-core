emitStore: aMethodBuilder
	aMethodBuilder
		pushLiteral: self;
		pushReceiver;
		send: #writeToSlot:of:  
		