accessing
newFontPointSizeField 
	
	| answer |
	answer := (PluggableTextMorph on: self text: #pointSizeString accept: #pointSizeString:)
		acceptOnCR: true;
		hideVScrollBarIndefinitely: true;
		color: Color gray veryMuchLighter;
		borderColor: #inset;
		vResizing: #rigid;
		hResizing: #spaceFill;
		width: (TextStyle defaultFont widthOfString: '99999999.99');
		height: TextStyle defaultFont height + 6;
		yourself.
	^answer