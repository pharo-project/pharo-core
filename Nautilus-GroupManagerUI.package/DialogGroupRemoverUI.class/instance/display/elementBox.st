elementBox
	^ GroupboxMorph new
		addContentMorph: self buildTextMorph;
		label: 'Item to remove';
		hResizing: #spaceFill;
		vResizing: #shrinkWrap