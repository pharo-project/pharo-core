from: aCharacterOrInteger
	| aCharacter |
	aCharacter := aCharacterOrInteger asCharacter.
	
	KMUntypeableSingleKeyCombination 
		ifSpecialKey: aCharacter do: [ :keyCombination | ^ keyCombination ]. 
	
	^ self new
		key: aCharacter;
		yourself