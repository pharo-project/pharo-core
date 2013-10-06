tempVectorNamed: aName
	(self hasTempVector: aName) ifFalse: [^nil].
	^blockSequence tempVectorNamed: aName.