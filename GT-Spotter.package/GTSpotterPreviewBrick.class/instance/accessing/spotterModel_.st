spotterModel: aSpotter
	
	spotterModel := aSpotter.
	aSpotter announcer weak when: GTSpotterSelectedCandidateChanged send: #onCandidateSelected: to: self.
	aSpotter announcer weak when: GTSpotterStepPopped send: #onStepPopped to: self.
	aSpotter announcer weak when: GTSpotterStepAdded send: #onStepAdded to: self.
	aSpotter announcer weak when: GTSpotterSearchFinished send: #onSearchFinished to: self.
	
	