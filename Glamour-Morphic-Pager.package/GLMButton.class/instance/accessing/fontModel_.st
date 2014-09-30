fontModel: aModel
	fontModel := aModel.
	
	fontModel announcer weak
		on: GLMPagerButtonFontUpdated send: #onFontUpdated to: self.