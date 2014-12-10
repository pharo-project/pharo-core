diveInCategory

	self spotterModel isEmpty
		ifFalse: [ self spotterModel currentStep isEmpty ifFalse: [ self spotterModel currentStep diveInCategory ] ]