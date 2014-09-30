label: aLabelModel

	labelModel := aLabelModel.
	
	labelModel announcer weak
		on: GLMPagerButtonLabelPositionChanged send: #onLabelPositionChanged to: self.
		
	labelModel announcer weak
		on: GLMPagerButtonLabelTextChanged send: #onLabelTextChanged to: self.