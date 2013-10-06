callbackEnterAddress

	self checkSession.
	
	cbEnter ifNil: [ self installCallbackCode ].
	
	^ cbEnter address

