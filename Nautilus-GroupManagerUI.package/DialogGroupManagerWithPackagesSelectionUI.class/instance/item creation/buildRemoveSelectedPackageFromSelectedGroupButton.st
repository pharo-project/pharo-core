buildRemoveSelectedPackageFromSelectedGroupButton
	^ IconicButton new
		target: self;
		actionSelector: #removeSelectedPackageFromSelectedGroup;
		labelGraphic: GroupIcon current upRedArrowIcon;
		color: Color transparent;
		helpText: 'Remove the selected package from its group';
		borderWidth: 0;
		yourself