checkSession
	session == Smalltalk session
		ifFalse: [ 
			surface := nil.
			self createSurface ]