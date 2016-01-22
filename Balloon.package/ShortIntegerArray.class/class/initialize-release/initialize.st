initialize
	LastSaveOrder := self new: 2.
	LastSaveOrder at: 1 put: 42.
	LastSaveOrder at: 2 put: 13.
	
	Smalltalk addToStartUpList: self after: Delay.
	SessionManager default registerSystemClassNamed: self name