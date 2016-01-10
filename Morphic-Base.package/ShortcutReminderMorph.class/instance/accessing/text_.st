text: text

	| font  |
	font := LogicalFont familyName: 'Source Sans Pro' pointSize: 170.
   tMorph := StringMorph new.
   tMorph
        contents: text;
        font: font;
        emphasis: TextEmphasis bold emphasisCode.
	self addMorph: tMorph.
	self bounds:(tMorph fullBounds).