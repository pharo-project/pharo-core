buildEmptyGroupButton
	^ IconicButton new
		target: self;
		actionSelector: #emptySelectedGroup;
		labelGraphic: GroupIcon current emptyGroupIcon;
		color: Color transparent;
		helpText: 'Empty the selected group';
		borderWidth: 0;
		yourself