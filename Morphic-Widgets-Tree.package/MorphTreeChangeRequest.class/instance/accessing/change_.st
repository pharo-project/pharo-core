change: aTreeMorph
	action ifNil: [^self].
	(aTreeMorph respondsTo: action)
		ifTrue: [aTreeMorph perform: action withEnoughArguments: self arguments]