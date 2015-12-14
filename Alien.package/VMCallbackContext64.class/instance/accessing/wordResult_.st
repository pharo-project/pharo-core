wordResult: anInteger
	"Accept any value in the -2^63 to 2^64-1 range."
	anInteger >= 0
		ifTrue: [self unsignedLongLongAt: 49 put: anInteger]
		ifFalse: [self signedLongLongAt: 49 put: anInteger].
	^1