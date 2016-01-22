initialize
	"SmalltalkImage initialize"

	self initializeStartUpList.
	self initializeShutDownList.
	Smalltalk addToStartUpList: SmalltalkImage.
	SessionManager default registerSystemClassNamed: self name