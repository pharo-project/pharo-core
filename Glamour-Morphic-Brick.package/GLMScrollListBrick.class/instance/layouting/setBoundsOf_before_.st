setBoundsOf: aMorph before: beforeMorph
	|origin corner|
	
	aMorph withWidth: self band width.
	aMorph doLayout.
	
	corner := beforeMorph brickBounds topRight.
	origin  := beforeMorph brickBounds topLeft - (0@aMorph height).
	
	aMorph brickBounds: (origin corner: corner)