printOn: s
	super printOn: s.
	s nextPutAll: '('.
	self bindings printOn: s.
	s nextPutAll: ')'