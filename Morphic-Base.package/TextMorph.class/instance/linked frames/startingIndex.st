startingIndex
	predecessor isNil
		ifTrue: [^ 1].
	^ predecessor lastCharacterIndex + 1 