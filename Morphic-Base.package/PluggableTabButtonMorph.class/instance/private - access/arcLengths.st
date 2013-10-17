arcLengths
	arcLengths ifNil: [ self calculateArcLengths ].
	^ arcLengths