initialize-release
initialize

	super initialize.

	ClockProvider := Time.
	LastTickSemaphore := Semaphore forMutualExclusion.
	LastMilliSeconds := 0.
	LastTick := 0.
	Smalltalk addToStartUpList: self.
	self startUp: true
