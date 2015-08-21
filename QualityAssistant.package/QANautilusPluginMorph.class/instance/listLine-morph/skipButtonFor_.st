skipButtonFor: aCritic
	
	^ IconicButton new
		target: aCritic;
		labelGraphic: (Smalltalk ui icons iconNamed: #smallCancelIcon);
		actionSelector: #guidedSkip;
		color: Color transparent;
		helpText: 'Ban this rule';
		extent: 16 @ 16;
		borderWidth: 0;
		yourself