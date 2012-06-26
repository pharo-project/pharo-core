keyboard
handleKeystrokeAfter: aKeyboardEvent editor: aParagraphEditor 
	(aParagraphEditor isNil or: [ self isMenuOpen not ])
		ifTrue: [ ^ self ].
	self setModel: aParagraphEditor model.
	context narrowWith: aParagraphEditor wordAtCaret.
	menuMorph narrowCompletion