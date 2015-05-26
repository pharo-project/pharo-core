renderGlyphs: cairoGlyphs

	font lock.
	canvas 
		setPathMatrix;
		setScaledFont: font.
	canvas paint loadOnCairoCanvas: canvas.

	canvas showGlyphs: cairoGlyphs address size: cairoGlyphs size.
	font unlock.

	
