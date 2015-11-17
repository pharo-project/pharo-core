expandedButton
	^ IconicButton new
		target: self;
		actionSelector: #unexpandAndRefresh;
		arguments: {};
		labelGraphic: self class expandedForm;
		color: Color transparent;
		helpText: 'Unexpand Item';
		borderWidth: 0