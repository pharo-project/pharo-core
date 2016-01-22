initialize
	Smalltalk addToShutDownList: self.
	SessionManager default registerGuiClassNamed: self name