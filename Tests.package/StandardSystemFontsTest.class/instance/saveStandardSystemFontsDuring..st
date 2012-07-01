utilities
saveStandardSystemFontsDuring: aBlock 
	| currentFontSpec |
	currentFontSpec := StandardFonts getCurrentFontsSpec.
	[aBlock value]
		ensure: [StandardFonts setFontsFromSpec: currentFontSpec] 