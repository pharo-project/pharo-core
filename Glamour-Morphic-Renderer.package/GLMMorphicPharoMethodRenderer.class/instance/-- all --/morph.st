morph
	
	^ RubScrolledTextMorph new
		beForSmalltalkCode;
		model: textModel;
		color: Smalltalk ui theme backgroundColor;
		textFont: StandardFonts codeFont;
		yourself