keyboard
handleKeystrokeBefore: aKeyboardEvent editor: anEditor 
	"I return a boolean. true when I have handled the event and no futher 
	processing 
	is needed by the caller."
	| keyValue controlKeyPressed isSpaceKey |
	self setEditor: anEditor.
	self setModel: editor model.
	keyValue := aKeyboardEvent keyValue.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	isSpaceKey := #(0 32 ) includes: keyValue.
	"Ctrl-Space or Tab for open"
	self isMenuOpen
		ifFalse: [(isSpaceKey & controlKeyPressed
					or: [keyValue = 9
							and: [editor isCaretBehindChar
									and: [controlKeyPressed not]]])
				ifTrue: [self openMenuFor: editor.
					^ true]
				ifFalse: [(self smartInput: keyValue)
						ifNotNil: [^ true]].
			^ false].
	"Home"
	keyValue = 1
		ifTrue: [menuMorph home.
			^ true].
	"End"
	(keyValue = 4
			and: [controlKeyPressed not])
		ifTrue: [menuMorph end. 
			^ true].
	"Right-Arrow"
	keyValue = 29
		ifTrue: [menuMorph showDetail.
			^ true].
	"Left Arrow"
	keyValue = 28
		ifTrue: [menuMorph hideDetail.
			^ true].
	"Arrow up"
	keyValue = 30
		ifTrue: [menuMorph moveUp.
			^ true].
	"Arrow down"
	keyValue = 31
		ifTrue: [menuMorph moveDown.
			^ true].
	"Page up"
	keyValue = 11
		ifTrue: [menuMorph pageUp.
			^ true].
	"Page down"
	keyValue = 12
		ifTrue: [menuMorph pageDown.
			^ true].
	"Tab or Ctrl-Space"
	(keyValue = 13
			or: [isSpaceKey & controlKeyPressed
					or: [keyValue = 9]])
		ifTrue: [menuMorph insertSelected
				ifTrue: [^ true]].
	"Ctrl-h"
	(keyValue = 104 and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph help.
		^ true ].
	"Ctrl-t"
	(keyValue = 116 and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph expand.
		^ true ].
	"Ctrl-u"
	(keyValue = 117 and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph switchToUntyped.
		^ true ].	
	"All keys but the alphanumeric chars (without command and control ) 
	and the backspace key do close the menu"
	keyValue = 8
		ifTrue: [editor isCaretBehindChar not
				ifTrue: [self closeMenu].
			^ false].
	(controlKeyPressed not & aKeyboardEvent commandKeyPressed not
			and: [aKeyboardEvent keyCharacter isAlphaNumeric])
		ifFalse: [self closeMenu.
			^ keyValue = 27].
	^ false