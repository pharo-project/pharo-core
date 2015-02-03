stepModel: aModel

	stepModel := aModel.
	
	stepModel announcer weak subscribe: GTSpotterSelectedCandidateChanged send: #onSelectedChanged: to: self.
	stepModel spotter announcer weak subscribe: GTSpotterStepPopped send: #onStepPopped to: self.
	
	self
		addActActionButton;
		addDiveInActionButton;
		highlightQuery;
		checkOrUncheck.