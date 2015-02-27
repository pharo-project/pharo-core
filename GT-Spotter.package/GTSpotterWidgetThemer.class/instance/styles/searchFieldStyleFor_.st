searchFieldStyleFor: aBrick
	
	aBrick
		hSpaceFill;
		vSpaceFill;
		marginLeft: self searchFieldMarginLeft.
		
	aBrick morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		textColor: self searchFieldTextColor;
		withoutAdornment;
		withGhostText: self spotterGhostText;
		autoAccept: true;
		borderColor: Color transparent;
		borderWidth: 0.
	
	aBrick morph ghostTextRuler
		fontName: self searchFieldFamilyName pointSize: self searchFieldFontSize.
		
	aBrick morph textArea
		font: (LogicalFont familyName: self searchFieldFamilyName pointSize: self searchFieldFontSize);
		backgroundColor: Color transparent