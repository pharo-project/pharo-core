emitValue: aMethodBuilder
	aMethodBuilder
		pushLiteralVariable: #global -> self;
		send: #read