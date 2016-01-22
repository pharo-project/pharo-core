release
	Smalltalk 
		removeFromStartUpList: self;
		removeFromShutDownList: self.
	SessionManager default unregisterClassNamed: self name