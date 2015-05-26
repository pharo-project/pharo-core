selectPreviousCategory

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectPreviousCategory ]
	