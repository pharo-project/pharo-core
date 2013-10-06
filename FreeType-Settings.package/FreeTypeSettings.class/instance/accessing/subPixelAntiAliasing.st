subPixelAntiAliasing
	self bitBltSubPixelAvailable ifFalse:[^false].
	self forceNonSubPixelCount > 0 ifTrue:[^false].
	^subPixelAntiAliasing ifNil:[false]