browser compatibility
sourceCode: aText 

	self okToChange
		ifTrue: [ 
			sourceTextArea setText: aText.
			sourceTextArea takeKeyboardFocus ]