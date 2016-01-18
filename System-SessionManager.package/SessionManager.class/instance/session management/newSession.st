newSession
	| aWorkingSession |
	aWorkingSession := WorkingSession new.
	aWorkingSession manager: self.
	^ aWorkingSession