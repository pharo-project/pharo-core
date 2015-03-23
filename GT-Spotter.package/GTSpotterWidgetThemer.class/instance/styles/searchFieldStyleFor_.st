searchFieldStyleFor: aBrick
	
	aBrick
		hSpaceFill;
		vSpaceFill;
		marginLeft: self searchFieldMarginLeft.
		
	aBrick morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		withoutAdornment;
		withGhostText: self spotterGhostText;
		autoAccept: true;
		borderWidth: 0.
	
	aBrick morph ghostTextRuler
		fontName: self searchFieldFamilyName pointSize: self searchFieldFontSize.
		
	aBrick morph textArea
		font: (LogicalFont familyName: self searchFieldFamilyName pointSize: self searchFieldFontSize)