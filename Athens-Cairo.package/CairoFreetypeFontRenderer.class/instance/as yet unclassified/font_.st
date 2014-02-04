font: aFreetypeFont 

	font := cache at: aFreetypeFont ifAbsentPut: [
		| ftFace face |
		
		ftFace := aFreetypeFont face.
		face := cache at: ftFace ifAbsentPut: [
			CairoFontFace fromFreetypeFace: ftFace
			]. 
	
		CairoScaledFont fromFreetypeFont: aFreetypeFont cairoFace: face.
	].
	fontExtents := font extents.
	originalFont := aFreetypeFont.
