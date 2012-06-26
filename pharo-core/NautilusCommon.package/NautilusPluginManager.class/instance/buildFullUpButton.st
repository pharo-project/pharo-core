items creation
buildFullUpButton

	^ IconicButton new 
		target: self;
		actionSelector: #fullUp;
		labelGraphic: (self iconClass iconNamed: #upFull);
		color: Color transparent;
		extent: 24 @ 24;
		borderWidth: 0