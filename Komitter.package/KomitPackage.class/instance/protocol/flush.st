flush
	super flush.
	
	semaphoreValid := false.
	self signalPatchIsReady.
	semaphoreValid := true.
	semaphore initSignals.
	classes ifNotNil: [ classes do: [ :each | each flush ] ].
	classes := nil.
	isFullyCommited := true.
	self retrievePatch