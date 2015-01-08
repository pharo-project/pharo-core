itemLabelStyleFor: aBrick

	aBrick label
		familyName: self itemFamilyName;
		fontSize: self itemFontSize;
		highlightingLogic: [ :aCanvas :aRectangle | | linePath stroke|
			linePath := aCanvas createPath: [:builder |
				builder
					absolute;
					moveTo: aRectangle bottomLeft;
     				lineTo: aRectangle bottomRight - (3@0) ].
			stroke := aCanvas setStrokePaint: Color lightGray.
			stroke width: 1.
			aCanvas drawShape: linePath ].
		
	aBrick layoutProperties
		horizontalPercent: 100;
		marginRight: self outerBorderWidth.