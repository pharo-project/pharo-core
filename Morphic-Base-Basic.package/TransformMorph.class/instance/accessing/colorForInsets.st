colorForInsets
	^ owner ifNil: [color] ifNotNil: [owner color]