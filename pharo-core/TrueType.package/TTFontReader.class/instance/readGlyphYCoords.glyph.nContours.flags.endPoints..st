private
readGlyphYCoords:entry glyph: glyph nContours: nContours flags: flags endPoints: endPts
	"Read the y coordinates for the given glyph from the font file."
	| startPoint endPoint flagBits yValue contour ttPoint |
	startPoint := 1.
	1 to: nContours do:[:i|
		contour := glyph contours at: i.
		"Get the end point"
		endPoint := (endPts at: i) + 1.
		"Store number of points"
		startPoint to: endPoint do:[:j|
			ttPoint := contour points at: (j - startPoint + 1).
			flagBits := flags at: j.
			"Check if this value one or two byte encoded"
			(flagBits bitAnd: 4) = 4 ifTrue:[ "one byte"
				yValue := entry nextByte.
				yValue := (flagBits bitAnd: 32)=32 ifTrue:[yValue] ifFalse:[yValue negated].
				ttPoint y: yValue.
			] ifFalse:[ "two byte"
				(flagBits bitAnd: 32) = 32 ifTrue:[ ttPoint y: 0 ]
				ifFalse:[
					yValue := entry nextShort.
					ttPoint y: yValue]]].
		startPoint := endPoint + 1]