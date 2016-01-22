initialize
	Smalltalk addToShutDownList: self.
	SessionManager default registerToolClassNamed: self name