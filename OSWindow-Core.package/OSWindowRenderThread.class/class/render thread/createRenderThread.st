createRenderThread
	RenderThreadProcess ifNotNil: [ RenderThreadProcess terminate ].
	
	RenderThreadQueue := AtomicSharedQueue new.
	OperationAvailableSemaphore := Semaphore new.
	
	RegisteredWindows := WeakSet new.
	RegisteredWindowsMutex := Semaphore forMutualExclusion.
	
	RenderThreadProcess := [ self renderThreadProcess ] forkAt: Processor userSchedulingPriority + 1.
	RenderThreadProcess name:  'OS Window Renderer Loop'; resume.
