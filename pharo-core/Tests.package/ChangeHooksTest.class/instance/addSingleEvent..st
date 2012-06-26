Private
addSingleEvent: anEvent

	capturedEvents isEmpty ifFalse: [self assert: false].
	capturedEvents add: anEvent