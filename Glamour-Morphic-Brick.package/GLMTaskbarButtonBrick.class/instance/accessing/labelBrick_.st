labelBrick: aBrick

	labelBrick := aBrick.
	self labelBrick
		width: #approximateWidth;
		textPosition: #center;
		maxWidth: 200;
		vSpaceFill.
	self addBrickBack: self labelBrick