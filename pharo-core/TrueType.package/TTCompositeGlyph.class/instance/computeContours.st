private
computeContours
	| out |
	out := (Array new: glyphs size * 4) writeStream.
	self glyphsAndTransformationsDo:[:glyph :transform|
		glyph contours do:[:ptArray|
			out nextPut: (transform localPointsToGlobal: ptArray).
		].
	].
	^out contents