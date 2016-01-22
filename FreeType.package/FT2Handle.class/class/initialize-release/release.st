release
	Smalltalk removeFromStartUpList: self.
	Smalltalk removeFromShutDownList: self.
	SessionManager default unregisterClassNamed: self name