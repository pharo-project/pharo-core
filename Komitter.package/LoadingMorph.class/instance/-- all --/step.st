step

	self isStepping ifFalse: [ ^ self ].
	
	self applyState: currentState nextState.