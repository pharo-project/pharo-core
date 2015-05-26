fromFreetypeFont: aFont 
	|  ftFace face |
	^ CairoBackendCache soleInstance at: aFont ifAbsentPut: [
			ftFace := aFont face.
			face := CairoBackendCache soleInstance at: ftFace ifAbsentPut: [
				CairoFontFace fromFreetypeFace: ftFace
			]. 
		self fromFreetypeFont: aFont  cairoFace: face
	].
