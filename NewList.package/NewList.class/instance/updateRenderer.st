updating - private
updateRenderer

	| morph |
	self flag: 'Can we keep the same instead of removing it ?'.

	self scroller removeAllMorphs.
	morph := NewListRenderer on: self.
	morph
		color: self color;
		width: self scroller width" +10";
		hasHeader: self hasHeader;
		height: (self listSize*self itemHeight+self headerHeight).
				
	self scroller addMorph: morph.
	renderer contents: morph.