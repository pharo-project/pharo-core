emitValue: aMethodBuilder
	self flag: 'to be completed, now just before link with no params'.
	aMethodBuilder
		pushLiteral: link;
		send: link selector.

	slot emitValue: aMethodBuilder.
	