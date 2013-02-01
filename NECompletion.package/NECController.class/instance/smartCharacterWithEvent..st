keyboard
smartCharacterWithEvent: anEvent
	"char is extracted from anEvent, anEvent is passed because we may need it.
	We may remove char if this is not costly."

	| opposite previous next char |
	char := anEvent keyCharacter.
	editor hasSelection ifTrue: [
		"we selected a piece of text and we type the same character that previously, so
		we unwrap it"
		"previouslyTypedChar = char
			ifTrue: [ 
					editor enclose: anEvent.
			
					self invalidateEditorMorph.
					self bookCharacter: nil.
					^ true ]."
	
		"we selected a piece of text if the character is not a special one we do nothing."
		opposite := self smartCharactersMapping at: char ifAbsent: [ ^ nil ].
		"else we wrap the selection" 
		"editor replaceSelectionWith: (String with: char) , (editor selection) , (String with: opposite)."
		"ugly logic it should be encapsulated in the editor "
		anEvent shiftPressed 
			ifTrue: [editor shiftEnclose: anEvent ]
			ifFalse: [ editor enclose: anEvent].
		self invalidateEditorMorph.
		^ true ].	
	
	"we are not in a selection" 	
	opposite := self smartCharactersMapping at: char ifAbsent: [
		"if the character is not a special character"
		self smartInverseMapping
			at: char
			ifAbsent: [ ^ nil ]. "if the character is not a closing special character do nothing"
		
		"The character is special"
		editor blinkPrevParen: char.
		(editor nextCharacterIfAbsent: [ ^ nil ]) = char
			ifFalse: [ ^ nil ]. "do not get this test but if we comment it out we cannot type closing ) anymore"
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
	
		self invalidateEditorMorph.
		^ true ].
	
	previous := editor previousCharacterIfAbsent: [ Character space ].
	next := editor nextCharacterIfAbsent: [ Character space ].
	
	"if we don't have separators (white space is a separator) we do not do anything"
	 (previous isSeparator or: [ next isSeparator ])
		ifFalse: [ self bookCharacter: char. 
				^ nil ].
	
	"if the character is a closing one and the next one is the same??? - I do not understand what is the effect"
	"(opposite = char and: [ next = char ]) ifTrue: [
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
		self invalidateEditorMorph.
		^ true ]."
	
	next isSeparator 
			ifFalse: [ editor replaceSelectionWith: (String with: char)]
			ifTrue: [ 
				(previous isSeparator)
					ifFalse: [ editor replaceSelectionWith: (String with: char)]
					ifTrue: [ editor replaceSelectionWith: (String with: char  with: Character space with: opposite)]].
			
	editor selectFrom: editor startIndex + 1 to: editor startIndex.
	self invalidateEditorMorph.
	^ true