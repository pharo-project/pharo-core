searchFieldStyleFor: aMorph

	aMorph
		layoutProperties: GLMBrickLayoutProperties new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		textColor: self searchFieldTextColor;
		withoutAdornment;
		withGhostText: self spotterGhostText;
		autoAccept: true;
		borderColor: Color transparent;
		borderWidth: 0.
		
	aMorph layoutProperties
		hSpaceFill;
		marginLeft: self searchFieldMarginLeft.
	
	aMorph ghostTextRuler
		fontName: self searchFieldFamilyName pointSize: self searchFieldFontSize.
		
	aMorph textArea
		font: (LogicalFont familyName: self searchFieldFamilyName pointSize: self searchFieldFontSize);
		backgroundColor: Color transparent.
		
	aMorph textArea cursor color: self searchFieldCursorColor