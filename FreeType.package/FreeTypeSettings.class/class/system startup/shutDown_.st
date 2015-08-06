shutDown: quitting 
	self current clearBitBltSubPixelAvailable.
	self current clearForceNonSubPixelCount.
	quitting ifTrue: [ EmbeddedFreeTypeFontInstaller resetCurrent ]