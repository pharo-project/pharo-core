itemLabelStyleFor: aBrick

	aBrick label highlightingLogic: [ :aCanvas :aRectangle | |bounds|
		"because font calculates text width wrong"
		bounds := aRectangle translateBy: (-3@0).
		aCanvas line: bounds bottomLeft to: bounds bottomRight width: 1 color: Color lightGray ].
	
	aBrick layoutProperties horizontalPercent: 100.
	aBrick label familyName: self itemFamilyName.
	aBrick label fontSize: self itemFontSize.
	aBrick layoutProperties marginRight: self outerBorderWidth.