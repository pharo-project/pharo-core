originalWidthOf: aBrick

	^ ((aBrick width) max: (self minWidthOf: aBrick)) min: (self maxWidthOf: aBrick).