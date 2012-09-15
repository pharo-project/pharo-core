initialization
createTitle
	| titleString transformationMorph |
	titleString := context model title ifNil: [ ^ self ].
	
	titleStringMorph := StringMorph new.
	titleStringMorph font: self class titleFont.
	titleStringMorph contents: titleString.
	
	transformationMorph := TransformationMorph new.
	transformationMorph rotationDegrees: -90.0;
		smoothingOn;
		offset: 0 @ (titleStringMorph width negated - 10);
		addMorph: titleStringMorph.

	self addMorph: transformationMorph