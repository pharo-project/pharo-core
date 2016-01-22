initialize
	"LanguageEnvironment initialize"

	Smalltalk addToStartUpList: LanguageEnvironment.
	SessionManager default registerSystemClassNamed: self name