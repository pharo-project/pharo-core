items creation
buildUpButton

	^ IconicButton new 
		target: self;
		actionSelector: #up;
		labelGraphic: (self iconClass iconNamed: #up);
		color: Color transparent;
		extent: 24 @ 24;
		borderWidth: 0