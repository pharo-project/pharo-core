width

	^ self widthBlock
		ifNotNil: [ self widthBlock value: self ]
		ifNil: [ self privateWidth ]