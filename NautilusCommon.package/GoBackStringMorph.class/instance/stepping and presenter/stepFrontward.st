stepFrontward
	index := index + 1.
	self currentContentsLargeEnough
		ifFalse: [ ^ self ].
	frontward := false.
	wait := 5