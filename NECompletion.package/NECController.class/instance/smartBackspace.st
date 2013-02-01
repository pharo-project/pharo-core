keyboard
smartBackspace

	| opposite |
	editor hasSelection
		ifTrue: [ ^ false ].
	
	opposite := self smartCharactersMapping
		at: (editor text
			at: editor startIndex - 1
			ifAbsent: [ ^ false ])
		ifAbsent: [ ^ false ].
		
	opposite = (editor text at: editor stopIndex + 1 ifAbsent: [ ^ false ])
		ifFalse: [ ^ false ].
		
	editor closeTypeIn.
	editor selectInvisiblyFrom: editor startIndex - 1 to: editor stopIndex + 1.
	editor replaceSelectionWith: editor nullText.
	self invalidateEditorMorph.
	
	^ true
	
