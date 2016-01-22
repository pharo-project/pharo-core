initialize
	Cr := Character cr.
	Lf := Character lf.
	CrLf := String with: Cr with: Lf.
	LineEndStrings := Dictionary new.
	LineEndStrings at: #cr put: (String with: Character cr).
	LineEndStrings at: #lf put: (String with: Character lf).
	LineEndStrings at: #crlf put: (String with: Character cr with: Character lf).
	LookAheadCount := 2048.
	
	Smalltalk addToStartUpList: self.
	SessionManager default registerSystemClassNamed: self name.
	self startUp.
