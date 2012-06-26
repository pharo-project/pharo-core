as yet unclassified
fromFormArray: formArray asciiStart: asciiStart ascent: ascentVal 
	| height width x badChar |
	type := 2.
	name := 'aFormFont'.
	minAscii := asciiStart.
	maxAscii := minAscii + formArray size - 1.
	ascent := ascentVal.
	subscript := superscript := emphasis := 0.
	height := width := 0.
	maxWidth := 0.
	formArray do: 
		[ :f | 
		width := width + f width.
		maxWidth := maxWidth max: f width.
		height := height max: f height + f offset y ].
	badChar := (Form extent: 7 @ height) borderWidth: 1.
	width := width + badChar width.
	descent := height - ascent.
	pointSize := height.
	glyphs := Form 
		extent: width @ height
		depth: formArray first depth.
	xTable := Array 
		new: maxAscii + 3
		withAll: 0.
	x := 0.
	formArray doWithIndex: 
		[ :f :i | 
		f 
			displayOn: glyphs
			at: x @ 0.
		xTable 
			at: minAscii + i + 1
			put: (x := x + f width) ].
	badChar 
		displayOn: glyphs
		at: x @ 0.
	xTable 
		at: maxAscii + 3
		put: x + badChar width.
	characterToGlyphMap := nil