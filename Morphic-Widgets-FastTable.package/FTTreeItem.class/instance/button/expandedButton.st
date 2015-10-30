expandedButton
	^ IconicButton new
		target: self;
		actionSelector: #unexpand;
		arguments: {};
		labelGraphic: self class expandedForm;
		color: Color transparent;
		helpText: 'Unexpand Item';
		borderWidth: 0