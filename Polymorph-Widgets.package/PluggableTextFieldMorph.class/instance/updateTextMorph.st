*keychain
updateTextMorph
	| text |
	
	text := textMorph
			ifNil: [ '' ]
			ifNotNil: [:t | 
				t delete.
				t contents ].	
	textMorph := nil.
	self setTextBasic: text 