keyboard
smartCharacter: aCharacter
	| opposite previous next |
	editor hasSelection ifTrue: [
		opposite := self smartCharactersMapping
			at: aCharacter
			ifAbsent: [ ^ nil ].
		editor replaceSelectionWith: (String with: aCharacter) , (editor selection) , (String with: opposite).
		editor selectFrom: editor stopIndex to: editor stopIndex - 1.
		self invalidateEditorMorph.
		^ true ].	
	opposite := self smartCharactersMapping at: aCharacter ifAbsent: [
		self smartInverseMapping
			at: aCharacter
			ifAbsent: [ ^ nil ].
		editor blinkPrevParen: aCharacter.
		(editor text at: editor startIndex ifAbsent: [ ^ nil ]) = aCharacter
			ifFalse: [ ^ nil ].
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
		self invalidateEditorMorph.
		^ true ].
	previous := editor text at: editor startIndex - 1 ifAbsent: [ Character space ].
	next := editor text at: editor startIndex ifAbsent: [ Character space ].
	(previous isSeparator or: [ next isSeparator ])
		ifFalse: [ ^ nil ].
	(opposite = aCharacter and: [ next = aCharacter ]) ifTrue: [
		editor selectFrom: editor startIndex + 1 to: editor startIndex.
		self invalidateEditorMorph.
		^ true ].
	editor replaceSelectionWith: (String with: aCharacter with: opposite).
	editor selectFrom: editor startIndex + 1 to: editor startIndex.
	self invalidateEditorMorph.
	^ true