geometry testing
fullContainsPoint: pt
	"The world clips its children"

	worldState ifNil: [^super fullContainsPoint: pt].
	^bounds containsPoint: pt

