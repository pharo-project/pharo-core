callbackLeaveAddress

	self checkSession.
	
	cbLeave ifNil: [ self installCallbackCode ].
	
	^ cbLeave address

