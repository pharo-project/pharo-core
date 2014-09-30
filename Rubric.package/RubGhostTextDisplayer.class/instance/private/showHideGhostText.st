showHideGhostText
	self textArea text
		ifNotEmpty: [ self removeAllMorphs ]
		ifEmpty: [ 
			ghostText unlock.
			ghostText centered.
			ghostText extent: self extent.
			self addMorphCentered: ghostText.
			ghostText lock]