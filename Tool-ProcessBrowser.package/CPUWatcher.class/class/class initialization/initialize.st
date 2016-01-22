initialize
	"CPUWatcher initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.
	SessionManager default registerToolClassNamed: self name