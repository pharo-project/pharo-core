buildNavigationNextButton
	^ IconicButton new
		target: self;
		actionSelector: #next;
		labelGraphic: (Smalltalk ui icons iconNamed: #forwardIcon);
		color: Color transparent;
		borderWidth: 0;
		helpText: 'Go forward in the navigation history';
		yourself