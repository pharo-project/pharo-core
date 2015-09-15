spotterModel: aModel 

	spotterModel := aModel.
	self searchField morph on: spotterModel.

	spotterModel announcer weak when: GTSpotterCurrentStepChanged send: #onCurrentStepChanged to: self.
	
	self spotterModel announcer weak when: GTSpotterRevealHints send: #onRevealHints to: self.
	self spotterModel announcer weak when: GTSpotterHideHints send: #onHideHints to: self.