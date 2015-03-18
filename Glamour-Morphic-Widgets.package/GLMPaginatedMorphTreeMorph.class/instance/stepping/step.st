step

	self wantsSteps ifFalse: [ ^ self ].
	self model updateRoots.
	self updateList