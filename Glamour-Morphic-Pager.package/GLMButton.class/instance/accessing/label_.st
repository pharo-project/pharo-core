label: aLabelModel

	labelModel := aLabelModel.
	
	labelModel announcer weak
		when: GLMPagerButtonLabelPositionChanged send: #onLabelPositionChanged to: self.
		
	labelModel announcer weak
		when: GLMPagerButtonLabelTextChanged send: #onLabelTextChanged to: self.