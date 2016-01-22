criticSelected: aCritic
	aCritic sourceAnchor providesInterval ifTrue: [ 
		self model codeTextMorph
			setSelection: aCritic sourceAnchor interval;
			takeKeyboardFocus ]