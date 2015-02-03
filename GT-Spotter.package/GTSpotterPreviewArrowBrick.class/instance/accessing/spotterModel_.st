spotterModel: aSpotterModel

	spotterModel := aSpotterModel.
	
	self spotterModel announcer weak subscribe: GTSpotterCandidateSelected send: #onCandidateSelected: to: self.
	self spotterModel announcer weak subscribe: GTSpotterCandidateSelectedMoved send: #onCandidateMoved to: self.
	self spotterModel announcer weak subscribe: GTSpotterStepAdded send: #onStepAdded to: self.
	self spotterModel announcer weak subscribe: GTSpotterShowPreview send: #onShowPreview to: self.
	self spotterModel announcer weak subscribe: GTSpotterHidePreview send: #onHidePreview to: self