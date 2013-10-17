shallowCopy
	"Characters from 0 to 255 are unique, copy only the rest."
		
	value < 256 ifTrue: [ ^self ].
	^super shallowCopy