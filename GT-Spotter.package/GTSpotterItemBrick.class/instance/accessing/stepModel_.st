stepModel: aModel

	stepModel := aModel.
	
	stepModel announcer weak when: GTSpotterSelectedCandidateChanged send: #onSelectedChanged: to: self.
	stepModel spotter announcer weak when: GTSpotterStepPopped send: #onStepPopped to: self.
	
	self actionbarBrick stepModel: aModel.
	
	self
		highlightQuery;
		checkOrUncheck.