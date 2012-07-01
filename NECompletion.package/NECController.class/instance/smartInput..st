keyboard
smartInput: anInteger 
	self smartCharacters 
		ifFalse: [ ^ nil ].
	^ anInteger = 8
		ifTrue: [ self smartBackspace ]
		ifFalse:  [ self smartCharacter: anInteger asCharacter ]