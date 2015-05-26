asQWord
	"answer the 64bit word representing a value"
	(self fitsInSize: 8)
		ifFalse: [ Error signal: self asString, ' exceeds quadword (64bit) range' ].

	(self isSigned and: [ value < 0 ]) ifTrue: [ ^ (1<<64) + value ].
	
	^ value