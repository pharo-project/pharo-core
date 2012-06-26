class initialization
initialize
	"FT2Handle initialize"

	Smalltalk removeFromStartUpList: self. "in case it was added by earlier version"
	Smalltalk addToShutDownList: self.
