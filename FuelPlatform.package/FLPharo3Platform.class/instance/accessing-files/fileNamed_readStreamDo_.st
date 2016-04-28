fileNamed: aFileame readStreamDo: aBlock
	aFileame asFileReference writeStreamDo: [ :stream |
		stream binary.
		aBlock value: stream ]