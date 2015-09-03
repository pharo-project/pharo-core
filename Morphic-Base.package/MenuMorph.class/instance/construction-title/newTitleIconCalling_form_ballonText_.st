newTitleIconCalling: aSelector form: aForm ballonText: aText

	^IconicButton new target: self;
		actionSelector: aSelector;
		labelGraphic: aForm;
		color: Color transparent;
		extent: 18 @ 18;
		borderWidth: 0;
		setBalloonText: aText translated;
		yourself.