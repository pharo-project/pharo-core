itemLabelStyleFor: aBrick

	aBrick label highlightingLogic: [ :aCanvas :aRectangle | | linePath stroke|
		linePath := aCanvas createPath: [:builder |
			builder
				absolute;
				moveTo: aRectangle bottomLeft;
     			lineTo: aRectangle bottomRight - (3@0) ].

		stroke := aCanvas setStrokePaint: Color lightGray.
		stroke width: 1.

		aCanvas drawShape: linePath ].
	
	aBrick layoutProperties horizontalPercent: 100.
	aBrick label familyName: self itemFamilyName.
	aBrick label fontSize: self itemFontSize.
	aBrick layoutProperties marginRight: self outerBorderWidth.