stepping
step

	(self isWorldMorph and: [owner notNil]) ifTrue: [
		^self runLocalStepMethods
	].
	super step