buildRemoveSelectedPackageFromSelectedGroupButton
	^ IconicButton new
		target: self;
		actionSelector: #removeSelectedPackageFromSelectedGroup;
		labelGraphic: (Smalltalk ui icons iconNamed: #up);
		color: Color transparent;
		helpText: 'Remove the selected package from its group';
		borderWidth: 0;
		yourself