initialization
initialize
"
	self initialize
"

	| tt |
	self allSubInstancesDo:[:fnt| fnt flushCache].
	GlyphCacheSize := 512.
	GlyphCacheData := Array new: GlyphCacheSize.
	GlyphCacheIndex := 0.
	GlyphCacheReady := true.
	
	tt := TTFontDescription default.
	tt ifNotNil: [self newTextStyleFromTT: tt].

	(Smalltalk tools fileList respondsTo: #registerFileReader:) ifTrue: [
		Smalltalk tools fileList registerFileReader: self
	].

	Smalltalk addToShutDownList: self.