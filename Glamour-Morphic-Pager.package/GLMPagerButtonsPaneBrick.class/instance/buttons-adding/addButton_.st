addButton: aBrick

	self buttons add: aBrick.
	
	aBrick enable.
	aBrick index: self buttons size.
	aBrick announcer weak subscribe: GLMPagerButtonClicked send: #onButtonClicked: to: self.
	aBrick announcer weak subscribe: GLMPagerButtonSelected send: #onButtonSelected: to: self.
	aBrick announcer weak subscribe: GLMPagerButtonDeselected send: #onButtonDeselected to: self.
	
	self theme pagerWidgetThemer defaultScrollButtonStyleFor: aBrick.
	
	aBrick height: self pagerModel circleButtonSize.
	aBrick width: self pagerModel circleButtonSize.
	
	self addBrickBack: aBrick.
	
	(self buttons size = 1) ifTrue: [ self updateButtonsFocus ].
		
	self updateButtons.