onAllCandidatesRemoved
	
	self band removeAllBricks.
	categories := nil.
	
	self doLayout.
	self changed.
	