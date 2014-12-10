selectNextCandidate

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectNext ]
	