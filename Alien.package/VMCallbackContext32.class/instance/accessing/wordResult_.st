wordResult: anInteger
	"Accept any value in the -2^31 to 2^32-1 range."
	anInteger >= 0
		ifTrue: [self unsignedLongAt: 25 put: anInteger]
		ifFalse: [self signedLongAt: 25 put: anInteger].
	^1