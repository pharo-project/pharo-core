accessing
nextInt: anInteger
	"Answer a random integer in the interval [1, anInteger].
	Handle large numbers too (for cryptography)."

	anInteger strictlyPositive ifFalse: [ self error: 'Range must be positive' ].
	anInteger asFloat isInfinite
		ifTrue: [^(self next asFraction * anInteger) truncated + 1].
	^ (self next * anInteger) truncated + 1