spotterModel: aSpotter
	
	spotterModel := aSpotter.
	aSpotter announcer weak subscribe: GTSpotterSelectedCandidateChanged send: #onCandidateSelected: to: self.
	aSpotter announcer weak subscribe: GTSpotterStepPopped send: #onStepPopped to: self
	