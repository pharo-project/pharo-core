translateBy: aPoint

	bounds := self bounds translateBy: aPoint.
	innerBounds := self innerBounds translateBy: aPoint.
	outerBounds := self outerBounds translateBy: aPoint.