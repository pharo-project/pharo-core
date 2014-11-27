newScrollbarMorph
	"Answer a new scrollbar morph."

	^ScrollBar new
		model: self;
		setValueSelector: #vScroll:;
		vResizing: #spaceFill;
		width: self theme scrollbarThickness