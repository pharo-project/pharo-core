objectChanged
	| newThumbnail |
	newThumbnail := self thumbnailMorph.
	newThumbnail 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self container 
		removeAllMorphs;
		addMorphCentered: newThumbnail