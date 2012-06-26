interface building
newFontSizePanel
	^Morph new
		borderWidth: 1;
		borderColor: Color black;
		hResizing: #spaceFill;
		vResizing: #shrinkwrap;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellInset: 0;
		listCentering: #topLeft;
		listDirection: #leftToRight;
		cellPositioning: #leftCenter;
		clipSubmorphs: true;
		"addMorphBack: self newFontEmphasisBoldButton;
		addMorphBack: self newFontEmphasisItalicButton;"
		addMorphBack: self newFontPointSizeLabel;
		addMorphBack: (pointSizeMorph := self newFontPointSizeField)
		