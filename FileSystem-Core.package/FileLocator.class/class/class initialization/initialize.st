initialize
	Smalltalk addToStartUpList: self.
	SessionManager default registerSystemClassNamed: self name.
	self startUp: true