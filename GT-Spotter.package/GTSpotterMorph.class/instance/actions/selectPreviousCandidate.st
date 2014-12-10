selectPreviousCandidate

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectPrevious ]
	