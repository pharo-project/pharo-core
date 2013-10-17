newFontList 
	| answer fon max |
	answer := PluggableListMorph
		on: self model
		list: #fontListStrings
		selected: #selectedFontIndex
		changeSelected: #selectedFontIndex:.
	fon := answer font.
	max := 20.
	model fontList do:[:each |
		max := max max: (fon widthOfStringOrText: each familyName)].	
	answer	
			color: Color white;
			borderInset;
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			"hResizing: #rigid;"
			width: max + answer scrollBarThickness + (fon widthOfStringOrText: '  ').
	self when: #fontsUpdated send: #verifyContents to: answer.
	^answer