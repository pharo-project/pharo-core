tests
testIsTransparentWithTransparentColor

	colorStyle color: (Color red alpha: 0).
	self assert: colorStyle isTransparent.
	self assert: colorStyle isTranslucent.
	
	self deny: composite isTransparent.
	self assert: composite isTranslucent. "Because we do not know better, as said in the comment"