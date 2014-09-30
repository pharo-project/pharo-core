buttonModel: aModel
	buttonModel := aModel.
	
	buttonModel announcer weak
		on: GLMPagerButtonPressed send: #onPressed to: self.
	
	buttonModel announcer weak
		on: GLMPagerButtonDepressed send: #onDepressed to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonSelected send: #onSelected to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonDeselected send: #onDeselected to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonChecked send: #onChecked to: self.
	
	buttonModel announcer weak
		on: GLMPagerButtonUnChecked send: #onUnChecked to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonClicked send: #onClicked: to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonEnabled send: #onEnabled to: self.
		
	buttonModel announcer weak
		on: GLMPagerButtonDisabled send: #onDisabled to: self.