createButton

	^ IconicButton new
		target: self;
		labelGraphic: (Smalltalk ui icons iconNamed: #refreshIcon);
		actionSelector: #revalidateEntity;
		color: Color transparent;
		width: 21;
		vResizing: #spaceFill; 
		helpText: 'Revalidate the entity';
		borderWidth: 0;
		yourself