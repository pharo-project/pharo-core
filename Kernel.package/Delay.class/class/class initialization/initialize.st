initialize
	"Delay initialize"
self newCodeEnabled 
  ifTrue: [
	Scheduler := DelayScheduler new. "adding new class variable"
	Smalltalk addToStartUpList: self.
	]
  ifFalse: [
	Scheduler := nil.
	TimingSemaphore := (Smalltalk specialObjectsArray at: 30).
	DelaySuspended := true.
	Smalltalk addToStartUpList: self.
	].
