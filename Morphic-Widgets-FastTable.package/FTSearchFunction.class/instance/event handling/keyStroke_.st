keyStroke: event
	event anyModifierKeyPressed ifTrue: [ ^ false ].
	event keyCharacter isAlphaNumeric ifFalse: [ ^ false ].
	
	self isVisible ifFalse: [ self showSearchField ].
	
	text := text copyWith: event keyCharacter.
	self searchFor: text.
	self changed: #text.
	self searchField takeKeyboardFocus.
	"hack to force deselection and move to end"
	self searchField 
		selectFrom: text size + 1 
		to: text size .

	^ true