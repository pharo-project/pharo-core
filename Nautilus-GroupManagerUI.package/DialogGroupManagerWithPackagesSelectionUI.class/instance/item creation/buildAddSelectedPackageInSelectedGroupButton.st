buildAddSelectedPackageInSelectedGroupButton
	^ IconicButton new
		target: self;
		actionSelector: #addSelectedPackageInSelectedGroup;
		labelGraphic: GroupIcon current downArrowIcon;
		color: Color transparent;
		helpText: 'Add the selected package into the selected group';
		borderWidth: 0;
		yourself