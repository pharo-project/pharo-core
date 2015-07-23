infoButtonFor: aCritic
	
	^ IconicButton new
		target: aCritic;
		labelGraphic: (Smalltalk ui icons iconNamed: #smallQuestionIcon);
		actionSelector: #popDescriptionUp;
		color: Color transparent;
		extent: 16 @ 16;
		helpText: 'View rationale behind the rule';
		borderWidth: 0;
		yourself