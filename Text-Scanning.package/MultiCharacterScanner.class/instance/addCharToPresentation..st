multilingual scanning
addCharToPresentation: char

	lastWidth := self widthOf: char inFont: font.
	destX := destX + lastWidth.

