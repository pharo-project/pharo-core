install
	"InputEventFetcher install"
	Default := self new.
	Default startUp.

	Smalltalk addToStartUpList: self after: Cursor.
	Smalltalk addToShutDownList: self after: Form.
	SessionManager default
		registerSystemClassNamed: self name 
		atPriority: 40.
