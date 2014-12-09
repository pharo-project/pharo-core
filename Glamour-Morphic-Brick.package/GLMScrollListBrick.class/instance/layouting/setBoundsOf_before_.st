setBoundsOf: aMorph before: beforeMorph

	aMorph brickBounds: (beforeMorph brickBounds translateBy: (0@aMorph height)negated)