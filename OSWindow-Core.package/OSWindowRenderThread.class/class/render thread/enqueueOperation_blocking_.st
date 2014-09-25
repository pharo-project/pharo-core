enqueueOperation: operation blocking: blocking
	" If this is in the RenderThread, execute directly"
	| operationHandle |
	Processor activeProcess == RenderThreadProcess ifTrue: [ operation value ].
	
	"Enqueue for execution in the render thread."
	self checkSession.
	
	"Enqueue the operation"
	operationHandle := OSWindowRenderThreadOperation new: operation blocking: blocking.
	RenderThreadQueue nextPut: operationHandle.
	OperationAvailableSemaphore signal.

	"Wait for blocking operations."
	blocking ifTrue: [ operationHandle wait ]
	