bindKeyCombination: aShortcut toAction: aBlock

	additionalKeyBindings at: aShortcut put: aBlock.
	
	self widget ifNotNil:[:w | w bindKeyCombination: aShortcut toAction: aBlock ]