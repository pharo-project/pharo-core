initialize
	inputSemaphore := Semaphore new.
	eventQueue := AtomicSharedQueue new.
	windowMap := WeakValueDictionary new.
	SDL2 initVideo.
	self setupEventLoop