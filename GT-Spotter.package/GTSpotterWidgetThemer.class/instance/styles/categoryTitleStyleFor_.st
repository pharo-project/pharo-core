categoryTitleStyleFor: aBrick

	aBrick layoutProperties floating: #stack.
	aBrick normalColor: (Color white alpha: 0.95).
	aBrick selectedColor: (Color veryVeryLightGray lighter alpha: 0.95).
	
	aBrick layoutPolicy: GLMBrickHorizontalFillProportionalLinearLayout new.
	aBrick layoutProperties maxWidthBlock: [ :title |
		aBrick layoutProperties horizontalPadding + 
		(title nameBrick label textSize x )+ title amountBrick label textSize x +
		title nameBrick layoutProperties horizontalPadding + title nameBrick layoutProperties horizontalMargin + 
		title nameBrick label layoutProperties horizontalPadding + title nameBrick label layoutProperties horizontalMargin + 
		title amountBrick layoutProperties horizontalMargin ].
	aBrick layoutProperties paddingLeft: self categoryNameMarginLeft.
	aBrick heightBlock: [ 30 ]