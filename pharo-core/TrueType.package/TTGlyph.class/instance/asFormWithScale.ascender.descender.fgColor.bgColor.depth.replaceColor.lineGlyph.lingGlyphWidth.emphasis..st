converting
asFormWithScale: scale ascender: ascender descender: descender fgColor: fgColor bgColor: bgColor depth: depth replaceColor: replaceColorFlag lineGlyph: lineGlyph lingGlyphWidth: lWidth emphasis: code

	| form canvas newScale |
	form := Form extent: (advanceWidth @ (ascender - descender) * scale) rounded depth: depth.
	form fillColor: bgColor.
	canvas := BalloonCanvas on: form.
	canvas aaLevel: 4.
	canvas transformBy: (MatrixTransform2x3 withScale: scale asPoint * (1 @ -1)).
	canvas transformBy: (MatrixTransform2x3 withOffset: 0 @ ascender negated).
	canvas
		drawGeneralBezierShape: self contours
		color: fgColor 
		borderWidth: 0 
		borderColor: fgColor.
	((code bitAnd: 4) ~= 0 or: [(code bitAnd: 16) ~= 0]) ifTrue: [
		newScale := (form width + 1) asFloat / lineGlyph calculateWidth asFloat.
		canvas transformBy: (MatrixTransform2x3 withScale: (newScale / scale)@1.0).

		(code bitAnd: 4) ~= 0 ifTrue: [
			canvas
				drawGeneralBezierShape: lineGlyph contours
				color: fgColor 
				borderWidth: 0 
				borderColor: fgColor.
		].

		(code bitAnd: 16) ~= 0 ifTrue: [
			canvas transformBy: (MatrixTransform2x3 withOffset: 0@(ascender // 2)).
			canvas
				drawGeneralBezierShape: lineGlyph contours
				color: fgColor 
				borderWidth: 0 
				borderColor: fgColor.
		].
	].

	replaceColorFlag ifTrue: [
		form replaceColor: bgColor withColor: Color transparent.
	].
	^ form