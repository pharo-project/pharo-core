objectChanged
	| newThumbnail |
	newThumbnail := self thumbnailMorph.
	newThumbnail 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self container removeSubWidgets.
	self container morph addMorphCentered: newThumbnail