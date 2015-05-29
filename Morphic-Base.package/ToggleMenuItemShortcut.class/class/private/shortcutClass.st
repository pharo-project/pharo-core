shortcutClass
	^ ToggleMenuItemShortcutWithSymbol canBeUsed
		ifTrue: [ ToggleMenuItemShortcutWithSymbol ]
		ifFalse: [ ToggleMenuItemShortcutWithText ]
	