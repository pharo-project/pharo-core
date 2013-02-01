code generation
emitSegmentPrefix: aMem

	(aMem isMem and: [ aMem hasSegmentPrefix ]) ifTrue: [
		self emitByte: aMem segmentPrefixCode.
	]
