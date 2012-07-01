private
readGlyphXCoords:entry glyph: glyph nContours: nContours flags: flags endPoints: endPts
	"Read the x coordinates for the given glyph from the font file."
	| startPoint endPoint flagBits xValue contour ttPoint |
	startPoint := 1.
	1 to: nContours do:[:i|
		contour := glyph contours at: i.
		"Get the end point"
		endPoint := (endPts at: i) + 1.
		"Store number of points"
		startPoint to: endPoint do:[:j|
			ttPoint := contour points at: (j - startPoint + 1).
			flagBits := flags at: j.
			"If bit zero in the flag is set then this point is an on-curve
			point, if not, then it is an off-curve point."
			(flagBits bitAnd: 1) = 1 
				ifTrue:[ ttPoint type: #OnCurve]
				ifFalse:[ttPoint type: #OffCurve].
			"First we check to see if bit one is set.  This would indicate that
			the corresponding coordinate data in the table is 1 byte long.
			If the bit is not set, then the coordinate data is 2 bytes long."
			(flagBits bitAnd: 2) = 2 ifTrue:[ "one byte"
				xValue := entry nextByte.
				xValue := (flagBits bitAnd: 16)=16 ifTrue:[xValue] ifFalse:[xValue negated].
				ttPoint x: xValue.
			] ifFalse:[ "two byte"
				"If bit four is set, then this coordinate is the same as the
				last one, so the relative offset (of zero) is stored.  If bit
				is not set, then read in two bytes and store it as a signed value."
				(flagBits bitAnd: 16) = 16 ifTrue:[ ttPoint x: 0 ]
				ifFalse:[
					xValue := entry nextShort.
					ttPoint x: xValue]]].
		startPoint := endPoint + 1]