other
removeStyleName: aString

	TextSharedInformation removeKey: aString asSymbol ifAbsent: [].
	TTFontDescription removeDescriptionNamed: aString asString.
