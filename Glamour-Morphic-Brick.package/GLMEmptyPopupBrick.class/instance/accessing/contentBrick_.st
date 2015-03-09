contentBrick: aBrick

	contentBrick := aBrick.
	self contentBrick
		vShrinkWrap;
		hShrinkWrap;
		paddingTop: 5;
		paddingBottom: 5;
		color: self themer popupThemer backgroundColor; 
		borderColor: self themer popupThemer borderColor;
	 	borderWidth: self themer popupThemer borderWidth.
	self addBrickBack: contentBrick

	