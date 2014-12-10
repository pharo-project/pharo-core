selectNextCategory

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectNextCategory ]
	