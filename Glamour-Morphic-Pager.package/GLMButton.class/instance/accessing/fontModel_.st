fontModel: aModel
	fontModel := aModel.
	
	fontModel announcer weak
		when: GLMPagerButtonFontUpdated send: #onFontUpdated to: self.