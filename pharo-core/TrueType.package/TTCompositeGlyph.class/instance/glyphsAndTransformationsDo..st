accessing
glyphsAndTransformationsDo: aBlock
	glyphs do:[:assoc|
		aBlock value: assoc value value: assoc key.
	].