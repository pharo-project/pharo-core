items creation
buildDownButton

	^ IconicButton new 
		target: self;
		actionSelector: #down;
		labelGraphic: (self iconClass iconNamed: #down);
		color: Color transparent;
		extent: 24 @ 24;
		borderWidth: 0