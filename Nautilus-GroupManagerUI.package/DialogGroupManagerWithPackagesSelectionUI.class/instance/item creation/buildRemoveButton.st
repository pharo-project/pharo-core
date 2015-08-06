buildRemoveButton
	^ IconicButton new
		target: self;
		actionSelector: #removeAction;
		labelGraphic: Smalltalk ui icons removeIcon;
		color: Color transparent;
		helpText: 'Remove the selected group';
		borderWidth: 0;
		yourself