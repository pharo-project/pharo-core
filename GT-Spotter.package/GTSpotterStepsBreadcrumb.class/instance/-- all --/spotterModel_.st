spotterModel: aSpotterModel
	
	spotterModel := aSpotterModel.
	
	spotterModel announcer weak subscribe: GTSpotterStepAdded send: #onStepAdded: to: self.
	spotterModel announcer weak subscribe: GTSpotterStepPopped send: #onStepPopped to: self.