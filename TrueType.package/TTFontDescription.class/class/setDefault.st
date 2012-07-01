instance creations
setDefault
"
	self setDefault
"

	Default := TTFontReader readFrom: (FileStream readOnlyFileNamed: 'C:\WINDOWS\Fonts\comic.ttf').
