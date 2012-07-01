instance creation
installTTF: ttfFileName asTextStyle: textStyleName sizes: sizeArray
	"Sizes are in pixels."
	"TTFontReader
		installTTF: 'F:\fonts\amazon:=:=.TTF' 
		asTextStyle: #Amazon
		sizes: #(24 60)"

	| ttf fontArray |
	ttf := self parseFileNamed: ttfFileName.
	fontArray := sizeArray collect:
		[:each |
		(ttf asStrikeFontScale: each / ttf unitsPerEm)
			name: textStyleName;
			pointSize: each].
	TextSharedInformation at: textStyleName asSymbol put: (TextStyle fontArray: fontArray)