spotterModel: aModel 

	spotterModel := aModel.
	self searchField on: spotterModel.

	spotterModel announcer subscribe: GTSpotterCurrentStepChanged send: #onCurrentStepChanged to: self.