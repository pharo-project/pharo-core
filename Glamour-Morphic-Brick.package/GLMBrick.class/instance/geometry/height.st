height

	^ self heightBlock
		ifNotNil: [ self heightBlock value: self ]
		ifNil: [ self privateHeight ]