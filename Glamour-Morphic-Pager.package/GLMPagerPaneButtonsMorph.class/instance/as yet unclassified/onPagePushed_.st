onPagePushed: addedAnnouncement
	|button|
	
	button := GLMPagerScrollButtonMorph new.
	indicatorButtons addLast: button.
	
	button buttonModel: (GLMPagerScrollButtonModel new pageIndex: indicatorButtons size).
	button buttonModel on: GLMPagerButtonClicked send: #scrollButtonClicked: to: self.
	button buttonModel on: GLMPagerButtonSelected send: #scrollButtonSelected: to: self.
	button buttonModel on: GLMPagerButtonDeselected send: #scrollButtonDeselected to: self.
	
	pagerModel scrollButtonIconRenderBlock ifNotNil: [
		self renderCustomScrollButtonIcons: (pagerModel scrollButtonIconRenderBlock value: indicatorButtons size) for: button.
	]	ifNil: [ 
		GLMPagerWidgetThemer new defaultScrollButtonStyleFor: button.
	].
	
	
	button height: pagerModel circleButtonSize.
	button width: pagerModel circleButtonSize.
	
	self addScrollButton: button.
	
	(indicatorButtons size = 1) ifTrue: [ self updateIndicatorButtonsFocus ].
		
	self updateIndicatorButtons.