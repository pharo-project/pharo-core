buildButtonRevert
	
	^(PluggableButtonMorph 
		on: self 
		getState: #revertButtonState 
		action: #revertButtonAction 
		label: #revertButtonLabel)
		hResizing: #spaceFill