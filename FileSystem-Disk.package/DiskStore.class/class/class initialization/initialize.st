initialize
	self useFilePlugin.
	Smalltalk 
		addToStartUpList: self after: OSPlatform;
		addToShutDownList: self.
	SessionManager default registerSystemClassNamed: self name