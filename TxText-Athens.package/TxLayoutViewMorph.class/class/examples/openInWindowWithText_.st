openInWindowWithText: aTxModel

	| viewMorph  wrapper |
	
	viewMorph := self text: aTxModel.
	
	viewMorph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		
	wrapper := AthensWrapMorph new.
	
	wrapper addMorph: viewMorph.
	
	^ wrapper openInWindow