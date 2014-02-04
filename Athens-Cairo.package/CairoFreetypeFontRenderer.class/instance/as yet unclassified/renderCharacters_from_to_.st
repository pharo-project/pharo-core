renderCharacters: aString from: start to: end

	| glyphs |

	glyphs := self glyphsOf: aString from: start to: end.
	
	font lock.
	
	canvas 
		setScaledFont: font;
		setPathMatrix.

	canvas paint loadOnCairoCanvas: canvas.

	canvas showGlyphs: glyphs address size: glyphs size.

	font unlock.		
	
	
