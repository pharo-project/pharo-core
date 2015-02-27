labelBrick: anObject
	labelBrick := anObject.
	
	self label
		vShrinkWrap;
		hShrinkWrap;
		text: 'button';
		vAlign: #center;
		hAlign: #center.
	
	self addBrickBack: self label