class initialization
initialize
	default := self new.
	Smalltalk addToShutDownList: self.