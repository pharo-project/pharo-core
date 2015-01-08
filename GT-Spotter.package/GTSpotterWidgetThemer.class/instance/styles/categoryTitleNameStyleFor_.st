categoryTitleNameStyleFor: aBrick

	aBrick
		textPosition: #leftCenter;
		textColor: self titleTextColor;
		color: self titleBackgroundColor.
	
	aBrick label
		fontSize: self titleFontSize;
		familyName: self titleFamilyName.
	
	aBrick layoutProperties
		horizontalPercent: 0;
		minWidthBlock: [ :name | (aBrick owner brickInnerBounds width) min: ((name label textSize x) + name label layoutProperties horizontalMargin) ].