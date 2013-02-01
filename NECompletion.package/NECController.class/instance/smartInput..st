keyboard
smartInput: aCharacter 
	
	
	aCharacter = Character backspace
		ifTrue: [ self smartBackspace ifTrue: [ ^ true ]].
		
	self smartCharacters 
		ifFalse: [ ^ nil ].
	
	^ self smartCharacter: aCharacter