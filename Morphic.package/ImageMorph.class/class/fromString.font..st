instance creation
fromString: aString font: aFont
	"Create a new ImageMorph showing the given string in the given font"

	^ self new image: (StringMorph contents: aString font: aFont) imageForm