private
at: char put: form
	| assoc |
	assoc := foregroundColor -> form.
	GlyphCacheData at: (GlyphCacheIndex := GlyphCacheIndex \\ GlyphCacheSize + 1) put: assoc.
	cache at: (char asInteger + 1) put: assoc.
	^ form