buildRemoveButton
	^ IconicButton new
		target: self;
		actionSelector: #removeAction;
		labelGraphic: GroupIcon current groupRemoveIcon;
		color: Color transparent;
		helpText: 'Remove the selected group';
		borderWidth: 0;
		yourself