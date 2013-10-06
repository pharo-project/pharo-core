lowestByteShift
	^ lowestByteShift ifNil: [ lowestByteShift := width - 8 ]