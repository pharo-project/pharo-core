keyStroke: event
	(event anyModifierKeyPressed or: [ event keyCharacter isAlphaNumeric not ])
		ifTrue: [ ^ false ].
		
	self isVisible
		ifFalse: [ self showSearchField ].
		
	text := text copyWith: event keyCharacter.
	self searchFor: text.
	self changed: #text.
	self searchField takeKeyboardFocus.
	"hack to force deselection and move to end"
	self searchField selectFrom: text size + 1 to: text size.
	^ true