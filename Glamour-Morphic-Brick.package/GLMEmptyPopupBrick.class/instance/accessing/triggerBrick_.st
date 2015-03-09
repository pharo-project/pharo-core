triggerBrick: aBrick

	triggerBrick := aBrick.
	self triggerBrick
		color: self themer popupThemer backgroundColor;
		borderColor: self themer popupThemer borderColor;
		borderWidth: self themer popupThemer borderWidth;
		borderDo: [ :b | b widthTop: 0 ];
		marginTop: self themer popupThemer borderWidth negated;
		addUpAction: [ :b :evt | self close. self anchorBrick click: evt ].
		
	self addBrickBack: self triggerBrick.