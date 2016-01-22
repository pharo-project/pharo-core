initialize
	Smalltalk addToStartUpList: self.
	SessionManager default registerNetworkClassNamed: self name