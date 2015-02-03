spotterModel: aModel 

	spotterModel := aModel.
	self searchField on: spotterModel.

	spotterModel announcer weak subscribe: GTSpotterCurrentStepChanged send: #onCurrentStepChanged to: self.