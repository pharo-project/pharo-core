soleInstance
	self checkSession.
	^ soleInstance ifNil: [ soleInstance := super new ]