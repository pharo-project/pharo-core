initialize
	inputSemaphore := Semaphore new.
	eventQueue := AtomicSharedQueue new.
	globalListeners := WeakSet new.
	self initializeWindowMap.
	SDL2 initVideo.
	self setupEventLoop.