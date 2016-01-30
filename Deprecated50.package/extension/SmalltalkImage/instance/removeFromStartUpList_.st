removeFromStartUpList: aClass
	self deprecated: 
		'Please use registration methods provided in SessionManager / registration category.', 
		String cr,
		'ex: SessionManager default unregisterClassNamed: self name'.