keyboard
smartInput: anInteger 
	
	anInteger = 8
		ifTrue: [ self smartBackspace ifTrue: [ ^ true ]].
		
	self smartCharacters 
		ifFalse: [ ^ nil ].
	
	^ self smartCharacter: anInteger asCharacter