*Tools-Inspector
inspectOnce
	"Inspect unless we have already done it once."
	self haltOnceEnabled
		ifTrue: [self clearHaltOnce.
				^ self inspect]