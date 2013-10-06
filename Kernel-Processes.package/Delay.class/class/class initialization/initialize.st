initialize
	"Delay initialize"
	TimingSemaphore := (Smalltalk specialObjectsArray at: 30).
	DelaySuspended := true.
	Smalltalk addToStartUpList: self.