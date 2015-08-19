initialize
	inputSemaphore := Semaphore new.
	eventQueue := AtomicSharedQueue new.
	windowMap := WeakValueDictionary new.
	globalListeners := WeakSet new.
	SDL2 initVideo.
	self setupEventLoop