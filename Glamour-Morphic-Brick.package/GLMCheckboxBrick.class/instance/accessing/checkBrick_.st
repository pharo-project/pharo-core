checkBrick: anObject
	checkBrick := anObject.
	self box
		borderColor: Color lightGray;
		borderWidth: 2;
		vAlign: #center;
		checkedImage: GLMUIThemeExtraIcons glamorousAccept;
		width: 18;
		height: 18.
		
	self addBrickFirst: self box