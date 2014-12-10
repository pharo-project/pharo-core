spotterModel: aModel 
	spotterModel := aModel.
	
	spotterModel steps do: [ :each | self pushPane: (GTSpotterStepPane new stepModel: each) ].
	
	spotterModel announcer subscribe: GTSpotterStepAdded send: #onStepAdded: to: self.