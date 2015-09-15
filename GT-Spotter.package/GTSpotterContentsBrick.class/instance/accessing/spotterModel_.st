spotterModel: aModel

	spotterModel := aModel.
	self headerBrick spotterModel: spotterModel.
	
	spotterModel steps isEmpty ifFalse: [ spotterModel currentStep isEmpty ifFalse: [ self showDropDownPane ] ].

	spotterModel announcer when: GTSpotterStepAdded send: #onStepAdded to: self.