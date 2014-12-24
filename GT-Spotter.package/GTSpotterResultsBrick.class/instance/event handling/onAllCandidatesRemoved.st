onAllCandidatesRemoved
	
	self band removeAllBricks.
	categories := nil.
	
	self band fullReleaseCachedState.
	self band releaseCachedState.
	
	self doLayout.
	self changed.
	