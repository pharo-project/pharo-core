stack management
releaseTemps: count
	^ self addInstruction: (AJReleaseTemps new count: count).