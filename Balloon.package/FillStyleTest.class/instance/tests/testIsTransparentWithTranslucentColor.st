testIsTransparentWithTranslucentColor

	colorStyle color: (Color red alpha: 0.5).
	self deny: colorStyle isTransparent.
	self assert: colorStyle isTranslucent.