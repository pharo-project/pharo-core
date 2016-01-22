initialize
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.
	SessionManager default registerNetworkClassNamed: self name