initialize
	self startUp: true.

	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.
	SessionManager default registerSystemClassNamed: self name