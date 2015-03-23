selectNextCandidateDueTo: anEventType

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectNextDueTo: anEventType ]
	