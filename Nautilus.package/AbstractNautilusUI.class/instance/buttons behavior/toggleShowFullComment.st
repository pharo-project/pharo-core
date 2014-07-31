toggleShowFullComment

	self showComment ifFalse: [ ^ self ].
	
	sourceCodePanel removeAllMorphs.
	sourceCodePanel 
		addMorph: self commentTextArea
		fullFrame: LayoutFrame identity