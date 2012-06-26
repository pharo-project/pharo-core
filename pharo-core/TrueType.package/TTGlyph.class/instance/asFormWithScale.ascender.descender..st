converting
asFormWithScale: scale ascender: ascender descender: descender
	^ self
		asFormWithScale: scale
		ascender: ascender
		descender: descender
		fgColor: Color black
		bgColor: Color white
		depth: 8
		replaceColor: true.
