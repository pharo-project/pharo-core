criticSelected: aCritic
	aCritic providesSelection ifTrue: [ 
		self model codeTextMorph
			setSelection: aCritic selection;
			takeKeyboardFocus ]