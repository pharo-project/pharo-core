buildAddButton
	^ IconicButton new
		target: self;
		actionSelector: #addAction;
		labelGraphic: GroupIcon current groupAddIcon;
		color: Color transparent;
		helpText: 'Add a new group';
		borderWidth: 0;
		yourself