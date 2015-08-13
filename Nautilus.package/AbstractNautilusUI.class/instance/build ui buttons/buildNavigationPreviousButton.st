buildNavigationPreviousButton
	^ IconicButton new
		target: self;
		actionSelector: #previous;
		labelGraphic: (Smalltalk ui icons iconNamed: #backIcon);
		color: Color transparent;
		borderWidth: 0;
		helpText: 'Go back in the navigation history';
		yourself