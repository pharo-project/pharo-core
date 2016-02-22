add: aClass toList: startUpOrShutDownList after: predecessor
	self deprecated: 
		'Please use registration methods provided in SessionManager / registration category.', 
		String cr,
		'ex: SessionManager default registerSystemClassNamed: self name'.
		
	SessionManager default registerUserClassNamed: aClass name.