initialize
	"Delay initialize"
	timingSemaphore := (Smalltalk specialObjectsArray at: 30) ifNil: [ Semaphore new ].
	delaySuspended := true.
	accessProtect := Semaphore forMutualExclusion.
