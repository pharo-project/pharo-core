categoryTitleNameStyleFor: aBrick

	aBrick textPosition: #leftCenter.
	aBrick textColor: self titleTextColor.
	aBrick layoutProperties horizontalPercent: 0.
	aBrick layoutProperties minWidthBlock: [ :name | (aBrick owner brickInnerBounds width) min: ((name label textSize x) + name label layoutProperties horizontalMargin) ].
	aBrick label fontSize: self titleFontSize.
	aBrick label familyName: self titleFamilyName.
	aBrick color: self titleBackgroundColor