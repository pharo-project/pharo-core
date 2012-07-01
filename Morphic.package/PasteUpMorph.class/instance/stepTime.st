testing
stepTime

	(self isWorldMorph and: [owner notNil]) ifTrue: [
		^1
	].
	^super stepTime