makeOuterBoundsFitWidth: anInteger
	|delta|
	
	delta := outerBounds width - anInteger.
	outerBounds := outerBounds withRight: (outerBounds right - delta).
	innerBounds := innerBounds withRight: (innerBounds right - delta).
	bounds := bounds withRight: (bounds right - delta).
	