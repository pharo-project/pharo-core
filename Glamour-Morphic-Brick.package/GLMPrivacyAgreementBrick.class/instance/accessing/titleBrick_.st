titleBrick: anObject
	titleBrick := anObject.
	
	self titleBrick
		beReadOnly;
		withoutAnyDecorator;
		margin: { 0 . self defaultMargin };
		marginRight: 15;
		font: TextStyle defaultFont;
		setTextWith: self defaultExplanationText.
		
	self addBrickBack: self titleBrick