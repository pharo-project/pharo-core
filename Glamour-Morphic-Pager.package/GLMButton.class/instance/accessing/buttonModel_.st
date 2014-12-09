buttonModel: aModel
	buttonModel := aModel.
	
	buttonModel announcer weak
		when: GLMPagerButtonPressed send: #onPressed to: self.
	
	buttonModel announcer weak
		when: GLMPagerButtonDepressed send: #onDepressed to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonSelected send: #onSelected to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonDeselected send: #onDeselected to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonChecked send: #onChecked to: self.
	
	buttonModel announcer weak
		when: GLMPagerButtonUnChecked send: #onUnChecked to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonClicked send: #onClicked: to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonEnabled send: #onEnabled to: self.
		
	buttonModel announcer weak
		when: GLMPagerButtonDisabled send: #onDisabled to: self.