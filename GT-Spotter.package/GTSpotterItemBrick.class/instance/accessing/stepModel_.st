stepModel: aModel

	stepModel := aModel.
	
	stepModel announcer subscribe: GTSpotterSelectedCandidateChanged send: #onSelectedChanged: to: self.
	
	self
		addActActionButton;
		addDiveInActionButton;
		highlightQuery;
		checkOrUncheck.