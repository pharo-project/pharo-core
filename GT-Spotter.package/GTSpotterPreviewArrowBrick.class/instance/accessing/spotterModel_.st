spotterModel: aSpotterModel

	spotterModel := aSpotterModel.
	
	self spotterModel announcer weak when: GTSpotterCandidateSelected send: #onCandidateSelected: to: self.
	self spotterModel announcer weak when: GTSpotterCandidateSelectedMoved send: #onCandidateMoved to: self.
	self spotterModel announcer weak when: GTSpotterStepAdded send: #onStepAdded to: self.
	self spotterModel announcer weak when: GTSpotterShowPreview send: #onShowPreview to: self.
	self spotterModel announcer weak when: GTSpotterHidePreview send: #onHidePreview to: self.
	
	self spotterModel announcer weak when: GTSpotterRevealHints send: #onRevealHints to: self.
	self spotterModel announcer weak when: GTSpotterHideHints send: #onHideHints to: self.