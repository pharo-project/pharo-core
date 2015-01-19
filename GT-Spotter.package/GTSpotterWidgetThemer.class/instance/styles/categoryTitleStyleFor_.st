categoryTitleStyleFor: aBrick

	aBrick
		layoutPolicy: GLMBrickHorizontalFillProportionalLinearLayout new;
		normalColor: (Color white alpha: 0.95);
		selectedColor: (Color veryVeryLightGray lighter alpha: 0.95);
		height: [ 30 ].
	
	aBrick layoutProperties
		floating: #stack;
		paddingLeft: self categoryNameMarginLeft;
		maxWidthBlock: [ :title |
			aBrick layoutProperties horizontalPadding + 
			(title nameBrick label textSize x )+ title amountBrick label textSize x +
			title nameBrick layoutProperties horizontalPadding + title nameBrick layoutProperties horizontalMargin + 
			title nameBrick label layoutProperties horizontalPadding + title nameBrick label layoutProperties horizontalMargin + 
			title amountBrick layoutProperties horizontalMargin ].