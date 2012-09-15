accessing
toggleShowFullComment

	self showComment ifFalse: [ ^ self ].
	
	sourceCodePanel removeAllMorphs.
	sourceCodePanel 
		addMorph: self commentTextArea
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))