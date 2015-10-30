unexpandedButton
	^ IconicButton new
		target: self;
		actionSelector: #expand;
		arguments: {};
		labelGraphic: self class unexpandedForm;
		color: Color transparent;
		helpText: 'Expand Item';
		borderWidth: 0