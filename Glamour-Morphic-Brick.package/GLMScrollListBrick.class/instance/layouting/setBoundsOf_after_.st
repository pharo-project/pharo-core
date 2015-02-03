setBoundsOf: aMorph after: afterMorph
	
	aMorph
		withWidth: self band width;
		doLayout;
		brickBounds: (afterMorph brickBounds bottomLeft extent: aMorph extent)