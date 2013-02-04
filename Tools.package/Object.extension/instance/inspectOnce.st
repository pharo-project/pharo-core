*Tools-Inspector
inspectOnce
	"Inspect unless we have already done it once."
	
	Halt isHaltOnceEnabled ifTrue: [
		Halt disableHaltOnce.
		^ self inspect ].