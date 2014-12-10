dropDownBrick: aBrick
	
	dropDownBrick ifNotNil: [self removeBrick: dropDownBrick].
	dropDownBrick := aBrick.
	
	dropDownBrick pagerModel: self spotterModel pagerModel.
	self theme spotterWidgetThemer dropDownPaneStyleFor: dropDownBrick.
	
	self addBrickBack: dropDownBrick