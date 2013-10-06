wantsRoundedCorners
	^ self isInDockingBar
		ifTrue: [true]
		ifFalse: [super wantsRoundedCorners]