checkSession
	session == Smalltalk session ifFalse: [ 
		"just reset the surface"
		surface := nil.
		session := Smalltalk session.
	]