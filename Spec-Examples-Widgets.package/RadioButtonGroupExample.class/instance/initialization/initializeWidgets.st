initializeWidgets

	self instantiateModels: #(
		button1 RadioButtonModel
		button2 RadioButtonModel
		button3 RadioButtonModel ).
	
	button1 label: 'Button 1'.
	button2 label: 'Button 2'.
	button3 label: 'Button 3'.
	
	self setFocus.
	self setGroup.
	