setFontDescriptionFromString: aString
	| desc |
	desc := AthensPangoFontDescription fromString: aString.
	desc loadOn: self.
	