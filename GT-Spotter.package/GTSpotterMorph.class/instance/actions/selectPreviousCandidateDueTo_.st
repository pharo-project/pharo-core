selectPreviousCandidateDueTo: anEventType

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep selectPreviousDueTo: anEventType ]
	