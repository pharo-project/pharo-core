initialize
	Smalltalk removeFromStartUpList: self. "in case it was added by earlier version"
	Smalltalk addToStartUpList: self.
	SessionManager default registerGuiClassNamed: self name
	