applyState: aState

	currentState = aState ifTrue: [ ^ self ].
	currentState := aState.
	self image: aState image