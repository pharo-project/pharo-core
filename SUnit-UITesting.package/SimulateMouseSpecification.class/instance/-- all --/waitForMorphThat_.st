waitForMorphThat: aBlock

	[
		morph := World submorphThat: aBlock ifNone: [ nil ].
		(Delay forMilliseconds: 100) wait.
		morph isNil ] whileTrue.
	^ morph.