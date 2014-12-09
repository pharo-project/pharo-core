height

	^ self heightBlock
		ifNotNil: [ self heightBlock cull: self ]
		ifNil: [ self privateHeight ]