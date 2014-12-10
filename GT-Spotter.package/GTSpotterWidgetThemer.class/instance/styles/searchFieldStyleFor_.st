searchFieldStyleFor: aMorph
	aMorph layoutProperties: GLMBrickLayoutProperties new.
	aMorph layoutProperties horizontalPercent: 100.
	aMorph layoutProperties marginLeft: self searchFieldMarginLeft.
	aMorph hResizing: #spaceFill.
	aMorph vResizing: #spaceFill.
	aMorph color: Color transparent.
	aMorph withoutAdornment.
	aMorph withGhostText: self spotterGhostText.
	aMorph ghostTextRuler fontName: self searchFieldFamilyName pointSize: self searchFieldFontSize.
	aMorph textArea font: (LogicalFont familyName: self searchFieldFamilyName pointSize: self searchFieldFontSize).
	aMorph textArea backgroundColor: Color transparent.
	aMorph autoAccept: true.
	aMorph borderColor: Color white