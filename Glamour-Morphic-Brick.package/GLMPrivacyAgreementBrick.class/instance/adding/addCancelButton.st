addCancelButton

	|button|
	button := GLMHintableActionButtonBrick new.
	button
		floating: #right;
		zIndex: 2;
		icon: GLMUIThemeExtraIcons glamorousClose;
		width: [ :b | b icon width * 1.5 ];
		height: [ :b | b icon height * 1.5 ];
		hintTitle: 'Close';
		hintText: '';
		pressedColor: self themer buttonPressedColor;
		when: #onClicked do: [  ];
		enable.
		
	self addBrickBack: button