spotterModel: aSpotterModel
	
	spotterModel := aSpotterModel.
	
	spotterModel announcer subscribe: GTSpotterStepAdded send: #onStepAdded: to: self.
	spotterModel announcer subscribe: GTSpotterStepPopped send: #onStepPopped to: self.