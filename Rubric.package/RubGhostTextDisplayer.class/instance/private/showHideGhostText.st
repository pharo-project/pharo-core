showHideGhostText
	self textArea text
		ifNotEmpty: [ self removeAllMorphs ]
		ifEmpty: [ 
			ghostText unlock.
			ghostText width: self width.
			self addMorphCentered: ghostText.
			self textArea hasKeyboardFocus
				ifTrue: [ ghostText leftFlush ]
				ifFalse: [ ghostText centered ].
			ghostText lock ]