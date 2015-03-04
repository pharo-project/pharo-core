emitValue: aMethodBuilder
	self flag: 'to be completed, now just before link with no params'.
	aMethodBuilder
		pushLiteral: link metaObject;
		send: link selector;
		popTop.

	slot emitValue: aMethodBuilder.
	