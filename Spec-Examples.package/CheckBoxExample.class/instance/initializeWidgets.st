initialization
initializeWidgets 

	self instantiateModels: #(
		button1 CheckBoxModel
		button2 CheckBoxModel
		button3 CheckBoxModel ).
	
	button1 label: 'Button 1'.
	button2 label: 'Button 2'.
	button3 label: 'Button 3'.
	self setFocus.