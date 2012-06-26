as yet unclassified
computeForm: char

	| ttGlyph scale |

	char = Character tab ifTrue: [^ super computeForm: char].

	"char = $U ifTrue: [self doOnlyOnce: [self halt]]."
	scale := self pixelSize asFloat / (ttcDescription ascender - ttcDescription descender).
	ttGlyph := ttcDescription at: char.
	^ ttGlyph asFormWithScale: scale ascender: ttcDescription ascender descender: ttcDescription descender fgColor: foregroundColor bgColor: Color transparent depth: self depth replaceColor: false lineGlyph: lineGlyph lingGlyphWidth: contourWidth emphasis: emphasis