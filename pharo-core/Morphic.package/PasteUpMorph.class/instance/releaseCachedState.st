caching
releaseCachedState
	super releaseCachedState.
	self removeModalWindow.
	self isWorldMorph ifTrue:[self cleanseStepList].