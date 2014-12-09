originalHeightOf: aBrick

	^ ((aBrick height) max: (self minHeightOf: aBrick)) min: (self maxHeightOf: aBrick).