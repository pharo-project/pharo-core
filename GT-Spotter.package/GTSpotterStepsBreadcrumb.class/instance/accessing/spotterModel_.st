spotterModel: aSpotterModel
	
	spotterModel := aSpotterModel.
	
	spotterModel announcer weak when: GTSpotterStepAdded send: #onStepAdded: to: self.
	spotterModel announcer weak when: GTSpotterStepPopped send: #onStepPopped to: self.