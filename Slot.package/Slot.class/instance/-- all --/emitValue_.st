emitValue: aMethodBuilder
	aMethodBuilder
		pushLiteral: self;
		pushReceiver;
		send: #read: