newOpenGLRenderer
	^ renderer := OSSDL2GLRenderer new 
		window: self;
		createContext;
		yourself