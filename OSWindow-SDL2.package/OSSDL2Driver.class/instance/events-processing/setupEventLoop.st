setupEventLoop
	EventLoopProcess ifNotNil: [ EventLoopProcess terminate ].
	
	self class hasPlugin  ifTrue: [
		EventLoopProcess := [ self eventLoopProcessWithPlugin ] forkAt: Processor lowIOPriority.
	] ifFalse: [
		EventLoopProcess := [ self eventLoopProcessWithoutPlugin ] forkAt: Processor lowIOPriority.
	].
	EventLoopProcess name:  'SDL2 Event loop'; resume.