actions
repository
	workingCopy ifNotNil: [repository := self defaults at: workingCopy ifAbsent: []].
	^ repository