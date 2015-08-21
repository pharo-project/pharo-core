criticSelected: aCritic
	aCritic hasSelection ifTrue: [ 
		self model codeTextMorph
			setSelection: aCritic selection;
			takeKeyboardFocus ]