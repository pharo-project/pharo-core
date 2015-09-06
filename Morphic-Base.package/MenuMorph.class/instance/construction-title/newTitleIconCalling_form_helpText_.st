newTitleIconCalling: aSelector form: aForm helpText: aText

	^IconicButton new target: self;
		actionSelector: aSelector;
		labelGraphic: aForm;
		color: Color transparent;
		extent: 18 @ 18;
		borderWidth: 0;
		helpText: aText translated;
		yourself.