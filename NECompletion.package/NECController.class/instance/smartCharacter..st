keyboard
smartCharacter: aCharacter
	| opposite previous next char |
	editor hasSelection ifTrue: [
		"we selected a piece of text if the character is not a special one we do nothing."
		opposite := self smartCharactersMapping at: aCharacter ifAbsent: [ ^ nil ].
		
		"else we wrap the selection" 
		editor replaceSelectionWith: (String with: aCharacter) , (editor selection) , (String with: opposite).
		editor selectFrom: editor stopIndex to: editor stopIndex - 1.
		self invalidateEditorMorph.
		^ true ].	
	
	"we are not in a selection" 	
	opposite := self smartCharactersMapping at: aCharacter ifAbsent: [
		"if the character is not a special character"
		self smartInverseMapping
			at: aCharacter
			ifAbsent: [ ^ nil ]. "if the character is not a closing special character do nothing"
		
		"The character is special"
		editor blinkPrevParen: aCharacter.
		(editor nextCharacterIfAbsent: [ ^ nil ]) = aCharacter
			ifFalse: [ ^ nil ]. "do not get this test but if we comment it out we cannot type closing ) anymore"
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
		self invalidateEditorMorph.
		^ true ].
	
	previous := editor previousCharacterIfAbsent: [ Character space ].
	next := editor nextCharacterIfAbsent: [ Character space ].
	
	"if we have separators do not do anything"
	 (previous isSeparator or: [ next isSeparator ])
		ifFalse: [ ^ nil ].
	
	"if the character is a closing one and the next one is the same??? - I do not understand what is the effect"
	(opposite = aCharacter and: [ next = aCharacter ]) ifTrue: [
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
		self invalidateEditorMorph.
		^ true ].
	
	char := editor nextCharacterIfAbsent:  [ Character space ].
	((char = Character space) or: [ char = Character cr]) 
			ifFalse: [ editor replaceSelectionWith: (String with: aCharacter)]
			ifTrue: [ editor replaceSelectionWith: (String with: aCharacter with: opposite)].
			
	editor selectFrom: editor startIndex + 1 to: editor startIndex.
	self invalidateEditorMorph.
	^ true