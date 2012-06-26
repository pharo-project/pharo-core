converting
asStrikeFontScale: scale
	"Generate a StrikeFont (actually a FormSetFont) for this TTF font at a given scale."

	| forms |
	forms := (0 to: 255) collect:
		[:i |
		(self at: i)
			asFormWithScale: scale
			ascender: ascender
			descender: descender].
	^ FormSetFont new
		fromFormArray: forms
		asciiStart: 0
		ascent: (ascender * scale) rounded