categoryTitleNameStyleFor: aBrick

	aBrick
		vSpaceFill;
		textPosition: #leftCenter;
		textColor: self titleTextColor;
		width: [ :name | (aBrick owner innerBounds width) min: ((name label textSize x) + name label hMargin) ];
		color: self titleBackgroundColor.
	
	aBrick label
		familyName: self titleFamilyName.
	