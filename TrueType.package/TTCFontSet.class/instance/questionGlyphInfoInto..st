as yet unclassified
questionGlyphInfoInto: glyphInfoArray

	| f form |
	f := fontArray at: 1.
	form := f formOf: $?.
	glyphInfoArray at: 1 put: form;
		at: 2 put: 0;
		at: 3 put: form width;
		at: 4 put: self.
	^ glyphInfoArray.
