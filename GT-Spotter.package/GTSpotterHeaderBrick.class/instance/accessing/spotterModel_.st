spotterModel: aModel 

	spotterModel := aModel.
	self searchField morph on: spotterModel.

	spotterModel announcer weak subscribe: GTSpotterCurrentStepChanged send: #onCurrentStepChanged to: self.
	
	self spotterModel announcer weak subscribe: GTSpotterRevealHints send: #onRevealHints to: self.
	self spotterModel announcer weak subscribe: GTSpotterHideHints send: #onHideHints to: self.