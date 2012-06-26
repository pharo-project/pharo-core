private
computeForm: char

	| ttGlyph scale |
	scale := self pixelSize asFloat / (ttcDescription ascender - ttcDescription descender).
	Scale ifNotNil: [scale := Scale * scale].
	ttGlyph := ttcDescription at: (char isCharacter ifTrue: [char charCode] ifFalse: [char]).
	^ ttGlyph asFormWithScale: scale ascender: ttcDescription ascender descender: ttcDescription descender fgColor: foregroundColor bgColor: Color transparent depth: self depth.
