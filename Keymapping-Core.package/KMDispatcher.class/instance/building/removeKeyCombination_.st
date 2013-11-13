removeKeyCombination: aShortcut
	| keymap |

	keymap := self keymapForShortcut: aShortcut.
	keymap ifNil: [ ^ self ].
	
	self directKeymaps removeKeymapEntry: keymap