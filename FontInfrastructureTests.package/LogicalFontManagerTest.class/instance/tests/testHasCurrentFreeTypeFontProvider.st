testHasCurrentFreeTypeFontProvider
	"If it fails, LogicalFontManager unload should be called."
	self assert: (LogicalFontManager current identityIncludesFontProvider: FreeTypeFontProvider current)
	