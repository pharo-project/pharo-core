font: aFont
	font := aFont asFreetypeFont.
	
	cairoFont := cache at: font ifAbsentPut: [
		|  ftFace face |
		
		ftFace := font face.
		face := cache at: ftFace ifAbsentPut: [
			CairoFontFace fromFreetypeFace: ftFace
			]. 
		CairoScaledFont fromFreetypeFont: font cairoFace: face.
	].

	extents := cairoFont extents.