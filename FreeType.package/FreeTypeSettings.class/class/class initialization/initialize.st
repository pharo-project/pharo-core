initialize
	Smalltalk removeFromStartUpList: self.
	Smalltalk addToStartUpList: self.
	SessionManager default registerGuiClassNamed: self name 