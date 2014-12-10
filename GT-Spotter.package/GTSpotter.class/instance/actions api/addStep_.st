addStep: aStepModel
	self historize: aStepModel origin.
	self steps add: aStepModel.
	self notifyStepAdded: aStepModel