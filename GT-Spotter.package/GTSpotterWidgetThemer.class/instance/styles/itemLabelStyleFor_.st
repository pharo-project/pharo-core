itemLabelStyleFor: aBrick

	aBrick label
		familyName: self itemFamilyName;
		fontSize: self itemFontSize;
		highlightingLogic: [ :aCanvas :aRectangle | |bounds|
			"because font calculates text width wrong"
			bounds := aRectangle translateBy: (-3@0).
			aCanvas line: bounds bottomLeft to: bounds bottomRight width: 1 color: Color lightGray ].
	
	aBrick layoutProperties
		hSpaceFill;
		marginRight: self outerBorderWidth.