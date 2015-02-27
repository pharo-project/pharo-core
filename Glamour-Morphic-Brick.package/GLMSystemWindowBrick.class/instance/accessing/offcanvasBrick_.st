offcanvasBrick: anObject
	offcanvasBrick := anObject.
	
	self offcanvasBrick
		vSpaceFill;
		color: Color white;
		width: self defaultOffcanvasWidth;
		borderDo: [ :b | b widthLeft: 1; widthTop: 1; color: Color veryVeryLightGray ];
		paddingLeft: 1;
		paddingTop: 1;
		marginTop: self defaultHeaderHeight;
		marginBottom: self defaultHeaderHeight negated;
		marginRight: self defaultOffcanvasWidth negated.
	
	self offcanvasBrick layout
		floating: #right;
		zIndex: 2.
		
	1 to: 20 do: [ :index |
		self offcanvasBrick addBrickBack: (GLMLabelBrick new
			color: Color white;
			text: ('Menu ', index asString);
			paddingLeft: 10;
			borderDo: [ :b | b widthBottom: 1; colorBottom: Color veryVeryLightGray ];
			hSpaceFill;
			height: 40) ].
	
	self addBrickBack: self offcanvasBrick