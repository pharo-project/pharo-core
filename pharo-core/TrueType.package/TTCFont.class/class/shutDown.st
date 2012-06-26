initialization
shutDown
	"Flush the glyph cache"
	GlyphCacheData atAllPut: nil.
	GlyphCacheIndex := 0.
	ShutdownList ifNotNil:[ShutdownList do:[:fnt| fnt flushCache]].
	ShutdownList := WeakSet new.
