protocol
asIconTargetting: newTarget

	^ IconicButton new 
		target: newTarget;
		actionSelector: self actionSelector;
		arguments: self arguments;
		labelGraphic: self labelGraphic;
		color: self color;
		helpText: self helpText;
		extent: self extent;
		borderWidth: self borderWidth