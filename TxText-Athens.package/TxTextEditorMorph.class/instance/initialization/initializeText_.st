initializeText: aTxModel 
	layoutViewMorph := self newViewMorphOn: aTxModel.

	cursorMorph := TxCaretCursor new.
	self addMorph: cursorMorph.

	layoutViewMorph 
"		hResizing: #spaceFill;
		vResizing: #spaceFill".
	self addMorph: layoutViewMorph.

 	
	self initializeController.
	self color: Color white.