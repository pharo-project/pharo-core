keyboard
smartInputWithEvent: anEvent
	"aCharacter is extracted from anEvent, anEvent is passed because we may need it.
	We may remove aCharacter if this is not costly."
	
	anEvent keyCharacter = Character backspace
		ifTrue: [ self smartBackspace ifTrue: [ ^ true ]].
		
	self smartCharacters 
		ifFalse: [ ^ nil ].
	
	^ self smartCharacterWithEvent: anEvent