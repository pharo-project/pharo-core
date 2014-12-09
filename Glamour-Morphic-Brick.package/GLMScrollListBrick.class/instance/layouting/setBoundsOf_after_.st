setBoundsOf: aMorph after: afterMorph

	aMorph brickBounds: (afterMorph brickBounds translateBy: (0@aMorph height))