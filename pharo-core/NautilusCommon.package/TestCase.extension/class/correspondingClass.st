*NautilusCommon
correspondingClass

	(self name endsWith: 'Test')
		ifTrue: [| index na symbol class |
			index := self name findString: 'Test'.
			na := self name copyFrom: 1 to: (index - 1) .
			symbol := Symbol readFromString: '#',na.
			^ Smalltalk at: symbol ifAbsent: [ nil ]].
	^ nil