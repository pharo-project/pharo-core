spotterModel: aModel 

	spotterModel := aModel.
	self searchField morph on: spotterModel.

	spotterModel announcer weak subscribe: GTSpotterCurrentStepChanged send: #onCurrentStepChanged to: self.