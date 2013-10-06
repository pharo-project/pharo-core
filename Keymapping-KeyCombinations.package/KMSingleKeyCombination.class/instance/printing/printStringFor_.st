printStringFor: aCharacter
	| specialKeys |
	specialKeys := self specialKeys.
	
	^specialKeys at: aCharacter asciiValue ifAbsent: [ aCharacter ].