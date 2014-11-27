stepBackward
	index := index - 1.
	index = 0
		ifFalse: [ ^ self ].
	frontward := true.
	wait := 3