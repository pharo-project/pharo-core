withPinBox

	pinBox ifNotNil: [ pinBox delete ].	
		
	pinBox := self 
		iconButtonCalling: #pinBoxClicked 
		withForm: self theme menuPinForm 
		helpText: 'Keep this menu up'.	
			
	self addMorph: pinBox asElementNumber: 4