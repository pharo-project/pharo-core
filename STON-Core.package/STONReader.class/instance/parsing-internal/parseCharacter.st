parseCharacter
	| char |
	^ (char := readStream next) = $\
		ifTrue: [ self parseEscapedCharacter ]
		ifFalse: [ char ]