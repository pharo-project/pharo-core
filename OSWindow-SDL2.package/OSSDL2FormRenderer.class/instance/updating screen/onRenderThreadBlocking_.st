onRenderThreadBlocking: aBlock
	aBlock value.
"
Have no idea, why one wants to use complicated separate rendering thread
with complex state management.
	OSWindowRenderThread enqueueBlockingOperation: aBlock
"