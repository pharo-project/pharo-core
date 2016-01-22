initialize
	default := self new.
	Smalltalk addToShutDownList: self.
	SessionManager default registerSystemClassNamed: self name