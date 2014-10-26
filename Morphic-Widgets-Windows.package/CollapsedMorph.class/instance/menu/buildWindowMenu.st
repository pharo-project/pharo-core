buildWindowMenu
	"Answer the menu to be put up in response to the user's clicking on the window-menu control in the window title.  Specialized for CollapsedMorphs."

	| aMenu |
	aMenu := UIManager default
					newMenuIn: self for: self.
	aMenu add: 'Change name...' action: #relabel.
	aMenu addLine.
	aMenu add: 'Send to back' action: #sendToBack.
	aMenu add: 'Make next-to-topmost' action: #makeSecondTopmost.
	aMenu addLine.
	self mustNotClose
		ifFalse:
			[aMenu add: 'Make unclosable' action: #makeUnclosable]
		ifTrue:
			[aMenu add: 'Make closable' translated action: #makeClosable].
	aMenu
		add: (self isSticky ifTrue: ['Make draggable'] ifFalse: ['Make undraggable']) 
		action: #toggleStickiness.
	^aMenu