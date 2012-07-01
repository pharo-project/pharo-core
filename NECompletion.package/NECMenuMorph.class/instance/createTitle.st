initialization
createTitle
	| titleString transformationMorph |
	titleString := context model title ifNil: [ ^ self ].
	
	titleStringMorph := StringMorph new.
	titleStringMorph font: self class titleFont.
	titleStringMorph contents: titleString.
	
	transformationMorph := TransformationMorph new.
	transformationMorph rotationDegrees: -90.0.
	transformationMorph offset: 0 @ titleStringMorph width negated.
	transformationMorph addMorph: titleStringMorph.

	self addMorph: transformationMorph