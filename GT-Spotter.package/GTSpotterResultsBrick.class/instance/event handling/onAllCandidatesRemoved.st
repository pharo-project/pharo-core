onAllCandidatesRemoved
	
	self removeAllBricks.
	categories := nil.
	
	self band fullReleaseCachedState.
	self band releaseCachedState.
	