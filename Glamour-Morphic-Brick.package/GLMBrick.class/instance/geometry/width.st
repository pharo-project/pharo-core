width

	^ self widthBlock
		ifNotNil: [ self widthBlock cull: self ]
		ifNil: [ self privateWidth ]