requestNextStepWith: origin
	text := ''.
	self pushStep: (self newStep origin: origin; yourself).
	self steps last process: nil.