buildRenameButton
	^ IconicButton new
		target: self;
		actionSelector: #renameAction;
		labelGraphic: GroupIcon current groupEditIcon;
		color: Color transparent;
		helpText: 'Rename the selected group';
		borderWidth: 0;
		yourself