openOnUrl: aString 

	| source |
	source := (ZnEasy get: aString) contents.
	self new
		toggleStylingActive;
		contents: source;
		openLabel: aString.