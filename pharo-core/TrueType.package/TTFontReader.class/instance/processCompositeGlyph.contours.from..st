processing
processCompositeGlyph: glyph contours: nContours from: entry
	"Read a composite glyph from the font data. The glyph passed into this method contains some state variables that must be copied into the resulting composite glyph."
	| flags glyphIndex hasInstr cGlyph ofsX ofsY iLen a11 a12 a21 a22 m |
	cGlyph := TTCompositeGlyph new.
	a11 := a22 := 16r4000.	"1.0 in F2Dot14"
	a21 := a12 := 0.		"0.0 in F2Dot14"
	"Copy state"
	cGlyph bounds: glyph bounds; glyphIndex: glyph glyphIndex.
	hasInstr := false.
	[ flags := entry nextUShort.
	glyphIndex := entry nextUShort + 1.
	(flags bitAnd: 1) = 1 ifTrue:[
		ofsX := entry nextShort.
		ofsY := entry nextShort.
	] ifFalse:[
		(ofsX := entry nextByte) > 127 ifTrue:[ofsX := ofsX - 256].
		(ofsY := entry nextByte) > 127 ifTrue:[ofsY := ofsY - 256]].
	((flags bitAnd: 2) = 2) ifFalse:[self error: 'Reading the values as points is not supported'].
	(flags bitAnd: 8) = 8 ifTrue:[
		a11 := a22 := entry nextShort].
	(flags bitAnd: 64) = 64 ifTrue:[
		a11 := entry nextShort.
		a22 := entry nextShort].
	(flags bitAnd: 128) = 128 ifTrue:[
		"2x2 transformation"
		a11 := entry nextShort.
		a21 := entry nextShort.
		a12 := entry nextShort.
		a22 := entry nextShort].
	m := MatrixTransform2x3 new.
	"Convert entries from F2Dot14 to float"
	m a11: (a11 asFloat / 16r4000).
	m a12: (a12 asFloat / 16r4000).
	m a21: (a21 asFloat / 16r4000).
	m a22: (a22 asFloat / 16r4000).
	m a13: ofsX.
	m a23: ofsY.
	cGlyph addGlyph: (glyphs at: glyphIndex) transformation: m.
	hasInstr := hasInstr or:[ (flags bitAnd: 256) = 256].
	"Continue as long as the MORE:=COMPONENTS bit is set"
	(flags bitAnd: 32) = 32] whileTrue.
	hasInstr ifTrue:[
		iLen := entry nextUShort.
		entry skip: iLen].
	^cGlyph